import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/navbar.dart';
import 'package:just_audio/just_audio.dart';
import 'package:rxdart/rxdart.dart' as rxdart;
import 'package:provider/provider.dart';
import 'package:flutter_application_1/provider/meditation.dart';
import '../model/meditation.dart';

import 'package:flutter_application_1/widget/seekbar.dart';

class MPlayer extends StatefulWidget {
  const MPlayer({Key? key}) : super(key: key);

  @override
  State<MPlayer> createState() => MPlayerState();
}

class MPlayerState extends State<MPlayer> {
  AudioPlayer audioPlayer = AudioPlayer();

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  Stream<SeekBarData> get _seekBarDataStream =>
      rxdart.Rx.combineLatest2<Duration, Duration?, SeekBarData>(
          audioPlayer.positionStream, audioPlayer.durationStream, (
        Duration position,
        Duration? duration,
      ) {
        return SeekBarData(
          position,
          duration ?? Duration.zero,
        );
      });

  @override
  Widget build(BuildContext context) {
    final meditationId = ModalRoute.of(context)?.settings.arguments as String;
    final meditationProvider = Provider.of<Meditations>(context); // is the id!
    final meditation = meditationProvider.findById(meditationId);
    audioPlayer
        .setAudioSource(AudioSource.uri(Uri.parse('${meditation.musicUrl}')));

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Align(
              alignment: AlignmentDirectional.topStart,
              child: Container(
                height: 700,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('${meditation.imageUrl}'),
                        fit: BoxFit.cover)),
              )),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Color(0xff0F143E).withOpacity(0.0),
                  Color(0xff0F143E).withOpacity(0.1),
                  Color(0xff0F143E).withOpacity(0.5),
                  Color(0xff0F143E).withOpacity(0.9),
                  Color(0xff0F143E).withOpacity(1),
                  Color(0xff0F143E)
                ])),
            //height: 300,
          ),
          Align(
              alignment: AlignmentDirectional.bottomStart,
              child: Container(
                padding: EdgeInsets.all(40),
                height: 320,
                width: double.infinity,
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '${meditation.title}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ),
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('${meditation.creator}',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.left),
                    ),
                    SizedBox(height: 35),
                    StreamBuilder<SeekBarData>(
                      stream: _seekBarDataStream,
                      builder: (context, snapshot) {
                        final positionData = snapshot.data;
                        return SeekBar(
                          position: positionData?.position ?? Duration.zero,
                          duration: positionData?.duration ?? Duration.zero,
                          onChangedEnd: audioPlayer.seek,
                        );
                      },
                    ),
                    SizedBox(height: 30),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.download,
                          color: Colors.white,
                          size: 28.0,
                        ),
                        Icon(
                          Icons.skip_previous,
                          color: Colors.white,
                          size: 35.0,
                        ),
                        StreamBuilder(
                          stream: audioPlayer.playerStateStream,
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              final playerState = snapshot.data;
                              final processingState =
                                  (playerState! as PlayerState).processingState;
                              if (processingState == ProcessingState.loading ||
                                  processingState ==
                                      ProcessingState.buffering) {
                                return Container(
                                  width: 64,
                                  height: 64,
                                  margin: const EdgeInsets.all(10),
                                  child: const CircularProgressIndicator(),
                                );
                              } else if (!audioPlayer.playing) {
                                return IconButton(
                                    onPressed: audioPlayer.play,
                                    iconSize: 75,
                                    icon: const Icon(Icons.play_circle,
                                        color: Colors.white));
                              } else if (processingState !=
                                  ProcessingState.completed) {
                                return IconButton(
                                    onPressed: audioPlayer.pause,
                                    iconSize: 75,
                                    icon: const Icon(Icons.pause_circle,
                                        color: Colors.white));
                              } else {
                                return IconButton(
                                    onPressed: () => audioPlayer.seek(
                                        Duration.zero,
                                        index: audioPlayer
                                            .effectiveIndices!.first),
                                    iconSize: 75,
                                    icon: const Icon(
                                        Icons.replay_circle_filled_outlined,
                                        color: Colors.white));
                              }
                            } else {
                              return const CircularProgressIndicator();
                            }
                          },
                        ),
                        Icon(
                          Icons.skip_next,
                          color: Colors.white,
                          size: 35.0,
                        ),
                        IconButton(
                          onPressed: () {
                            meditation.statusFav();
                          },
                          icon: (meditation.isFavorite)
                              ? Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                  size: 25.0,
                                )
                              : Icon(
                                  Icons.favorite_border_outlined,
                                  color: Colors.white,
                                  size: 25.0,
                                ),
                        ),

                        // Consumer<Meditation>(
                        //     builder: (context, meditation, child) => IconButton(
                        //           onPressed: () {
                        //             meditation.statusFav();
                        //           },
                        //           icon: (meditation.isFavorite)
                        //               ? Icon(
                        //                   Icons.favorite,
                        //                   color: Colors.white,
                        //                   size: 25.0,
                        //                 )
                        //               : Icon(
                        //                   Icons.favorite_border_outlined,
                        //                   color: Colors.white,
                        //                   size: 25.0,
                        //                 ),
                        //         )),
                      ],
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
