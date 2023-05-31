import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/navbar.dart';
import 'package:flutter_application_1/widget/music_item.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/provider/music.dart';

class MusicList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final musicData = Provider.of<Musics>(context);
    final allMusic = musicData.allMusics;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 111, 126),
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: new Text("Ambient and Atmospheric",
            style: TextStyle(
              color: Colors.white,
              fontSize: 23,
              fontWeight: FontWeight.w500,
            )),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 0, 111, 126),
            Color.fromARGB(255, 247, 120, 147),
          ],
        )),
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Find what you like",
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(
                            width: 190,
                          ),
                          Icon(
                            Icons.search,
                            color: Color(0xff0F143E),
                          )
                        ],
                      ),
                    )),
                Container(
                  height: 50,
                  child: Row(children: [
                    Icon(
                      Icons.play_arrow_rounded,
                      color: Colors.white,
                      size: 50,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.shuffle_rounded,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 180,
                    ),
                    Text(
                      "Filters",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                    )
                  ]),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      // borderRadius: BorderRadius.only(
                      //     topLeft: Radius.circular(30),
                      //     topRight: Radius.circular(30))
                    ),
                    child: ListView.builder(
                      itemCount: allMusic.length,
                      itemBuilder: (ctx, i) => MusicItem(
                        allMusic[i].id,
                        allMusic[i].title,
                        allMusic[i].musician,
                        allMusic[i].imageUrl,
                      ),
                    ),
                  ),
                )),
              ]),
        ),
      ),
      bottomNavigationBar: Navbar(
        bgcolor: Color.fromARGB(255, 247, 120, 147),
      ),
    );
  }
}
