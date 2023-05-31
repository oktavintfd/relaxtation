// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/page/getmood.dart';
// import 'package:flutter_application_1/page/moodcheck.dart';
// import 'package:flutter_application_1/page/moodhome.dart';
// import 'package:flutter_application_1/page/moodlist.dart';
// import 'package:flutter_application_1/page/updatemood.dart';
// import 'package:flutter_application_1/provider/mood.dart';
// import 'package:provider/provider.dart';
// import 'package:flutter_application_1/page/home2.dart';
// import 'package:flutter_application_1/page/splash.dart';
// import 'package:flutter_application_1/page/loginpage.dart';
// import 'package:flutter_application_1/page/registration.dart';
// import 'package:flutter_application_1/page/profile.dart';
// import 'package:flutter_application_1/page/favourite.dart';
// import 'package:flutter_application_1/page/search.dart';
// import 'package:flutter_application_1/page/meditation.dart';
// import 'package:flutter_application_1/page/music.dart';
// import 'package:flutter_application_1/page/musiclist.dart';
// import 'package:flutter_application_1/page/music_player.dart';
// import 'package:flutter_application_1/page/meditation_player.dart';
// import 'package:flutter_application_1/page/checkin.dart';
// import 'package:flutter_application_1/page/moodhome.dart';
// import 'package:flutter_application_1/page/editmood.dart';
// import 'package:flutter_application_1/provider/meditation.dart';
// import 'package:flutter_application_1/provider/music.dart';
// import 'package:flutter_application_1/provider/mood.dart';
// import 'package:flutter_application_1/provider/auth.dart';

// main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//         providers: [
//           ChangeNotifierProxyProvider<Authentication, Moods>(
//             create: (context) => Moods(),
//             update: (context, auth, moods) =>
//                 moods!..updateData(auth.token, auth.userId),
//           ),
//           ChangeNotifierProvider(create: (context) => Authentication()),
//           ChangeNotifierProvider(create: (context) => Moods()),
//           ChangeNotifierProvider(create: (context) => Meditations()),
//           ChangeNotifierProvider(create: (context) => Musics()),
//         ],
//         child: MaterialApp(
//           debugShowCheckedModeBanner: false,
//           home: Splash(),
//           initialRoute: '/splash',
//           routes: {
//             '/splash': (context) => Splash(),
//             '/home': (context) => HomePage(),
//             '/login': (context) => LoginPage(),
//             '/registration': (context) => Registration(),
//             '/profile': (context) => Profile(),
//             '/favourite': (context) => Favourite(),
//             '/search': (context) => Search(),
//             '/meditation': (context) => Meditation(),
//             '/music': (context) => Music(),
//             '/musiclist': (context) => MusicList(),
//             '/music_player': (context) => MusicPlayer(),
//             '/meditation_player': (context) => MPlayer(),
//             '/moodcheck': (context) => AddMoodCheck(),
//             '/editmood': (context) => UpdateMood(),
//             '/moodlist': (context) => Moodlist(),
//           },
//         ));
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/getmood.dart';
import 'package:flutter_application_1/page/moodcheck.dart';
import 'package:flutter_application_1/page/moodhome.dart';
import 'package:flutter_application_1/page/moodlist.dart';
import 'package:flutter_application_1/page/updatemood.dart';
import 'package:flutter_application_1/provider/mood.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/page/home2.dart';
import 'package:flutter_application_1/page/splash.dart';
import 'package:flutter_application_1/page/loginpage.dart';
import 'package:flutter_application_1/page/registration.dart';
import 'package:flutter_application_1/page/profile.dart';
import 'package:flutter_application_1/page/favourite.dart';
import 'package:flutter_application_1/page/search.dart';
import 'package:flutter_application_1/page/meditation.dart';
import 'package:flutter_application_1/page/music.dart';
import 'package:flutter_application_1/page/musiclist.dart';
import 'package:flutter_application_1/page/music_player.dart';
import 'package:flutter_application_1/page/meditation_player.dart';
import 'package:flutter_application_1/page/checkin.dart';
import 'package:flutter_application_1/page/moodhome.dart';
import 'package:flutter_application_1/page/editmood.dart';
import 'package:flutter_application_1/provider/meditation.dart';
import 'package:flutter_application_1/provider/music.dart';
import 'package:flutter_application_1/provider/mood.dart';
import 'package:flutter_application_1/provider/auth.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => Authentication(),
          ),
          ChangeNotifierProvider(create: (context) => Meditations()),
          ChangeNotifierProvider(create: (context) => Musics()),
          ChangeNotifierProvider(create: (context) => Moods()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Splash(),
          initialRoute: '/splash',
          routes: {
            '/splash': (context) => Splash(),
            '/home': (context) => HomePage(),
            '/login': (context) => LoginPage(),
            '/registration': (context) => Registration(),
            '/profile': (context) => Profile(),
            '/favourite': (context) => Favourite(),
            '/search': (context) => Search(),
            '/meditation': (context) => Meditation(),
            '/music': (context) => Music(),
            '/musiclist': (context) => MusicList(),
            '/music_player': (context) => MusicPlayer(),
            '/meditation_player': (context) => MPlayer(),
            '/moodcheck': (context) => AddMoodCheck(),
            '/editmood': (context) => UpdateMood(),
            '/moodlist': (context) => Moodlist(),
          },
        ));
  }
}
