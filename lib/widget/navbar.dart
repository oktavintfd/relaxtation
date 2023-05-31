import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  Navbar({required this.bgcolor});
  final Color bgcolor;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        color: bgcolor,
        child: Container(
            padding: EdgeInsets.only(top: 5),
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                // color: Color(0xff262D62),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff6712AA),
                    Color(0xff101441),
                  ],
                )),

            //cuma ikonnya (bukan bg)
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/home');
                    },
                    child: Container(
                        padding: EdgeInsets.only(top: 8),
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.home,
                              color: Colors.white,
                              size: 36,
                            ),
                          ],
                        ))),
                InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/search');
                    },
                    highlightColor: Colors.black,
                    child: Container(
                      padding: EdgeInsets.only(top: 8),
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 36,
                          ),
                        ],
                      ),
                    )),
                InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/favourite');
                    },
                    child: Container(
                      padding: EdgeInsets.only(top: 8),
                      child: Column(
                        children: const <Widget>[
                          Icon(
                            Icons.favorite,
                            color: Colors.white,
                            size: 36,
                          ),
                        ],
                      ),
                    )),
                InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/profile');
                    },
                    child: Container(
                        padding: EdgeInsets.only(top: 8),
                        child: Column(
                          children: const <Widget>[
                            Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 36,
                            ),
                          ],
                        ))),
              ],
            )));
  }
}
