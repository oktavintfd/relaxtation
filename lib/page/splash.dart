import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/login.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 8),
        () => Navigator.of(context).pushReplacementNamed('/login'));
    // Timer(Duration(seconds: 4), () => runApp(LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0F143E),
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('images/kembang.png'),
            height: 100,
          ),
          SizedBox(
            height: 30,
          ),
          Image(
            image: AssetImage('images/stasiunrelax.png'),
            height: 50,
          ),
          SizedBox(
            height: 50,
          ),
        ],
      )),
    );
  }
}
