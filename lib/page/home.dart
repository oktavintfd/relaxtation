import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/navbar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0F143E),
      // ignore: prefer_const_constructors
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 20),
              height: 280,
              width: 420,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/land.jpg'), fit: BoxFit.cover)),
              child: Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: (Text("Good Evening, Arra!",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          )))),
                  SizedBox(height: 20)
                ],
              )),
            ),

            const SizedBox(
              height: 30,
            ),
            // ignore: avoid_unnecessary_containers
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: (Text("Discover",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                            )))),
                    const SizedBox(height: 20),
                    Container(
                        height: 110,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage('images/cropa.png'),
                                    fit: BoxFit.cover),
                              ),
                              margin: const EdgeInsets.only(right: 20.0),
                              padding:
                                  const EdgeInsets.only(left: 15.0, top: 15.0),
                              height: 110,
                              width: 230,
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: (Text("Reset Your Attention",
                                          style: TextStyle(
                                            color: Color(0xff47011D),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                          )))),
                                  SizedBox(height: 4),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: (Text("by Dr. Eric Lopez, Ph.D.",
                                          style: TextStyle(
                                            color: Color(0xff47011D),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          )))),
                                  SizedBox(height: 15),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: (Text("Meditation",
                                          style: TextStyle(
                                            color: Color(0xff47011D)
                                                .withOpacity(.8),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          )))),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage('images/blue.png'),
                                    fit: BoxFit.cover),
                              ),
                              margin: const EdgeInsets.only(right: 10.0),
                              padding:
                                  const EdgeInsets.only(left: 15.0, top: 15.0),
                              height: 110,
                              width: 230,
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: (Text("Dreaming With Frida",
                                          style: TextStyle(
                                            color: Color(0xff000219),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                          )))),
                                  SizedBox(height: 4),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: (Text("by Emily Rios",
                                          style: TextStyle(
                                            color: Color(0xff000219),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          )))),
                                  SizedBox(height: 15),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: (Text("Sleep Stories",
                                          style: TextStyle(
                                            color: Color(0xff000219)
                                                .withOpacity(.8),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          )))),
                                ],
                              ),
                            ),
                          ],
                        )),
                    const SizedBox(height: 20),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: (Text("Features",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                            )))),
                    const SizedBox(height: 20),
                    Container(
                        child: Column(
                      children: [
                        Container(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed('/meditation');
                                },
                                child: Container(
                                    height: 60,
                                    width: 110,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xff262D62),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Spacer(),
                                        Icon(Icons.self_improvement,
                                            color: Colors.white),
                                        Spacer(),
                                        Text("Meditation",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                            )),
                                        Spacer(),
                                      ],
                                    ))),
                            Spacer(),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).pushNamed('/music');
                              },
                              child: Container(
                                  height: 60,
                                  width: 110,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xff262D62),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Spacer(),
                                      Icon(Icons.music_note,
                                          color: Colors.white),
                                      Spacer(),
                                      Text("Music",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                          )),
                                      Spacer(),
                                    ],
                                  )),
                            ),
                            Spacer(),
                            Container(
                                height: 60,
                                width: 110,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xff262D62),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Spacer(),
                                    Icon(Icons.ac_unit, color: Colors.white),
                                    Spacer(),
                                    Text("Soundscapes",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                        )),
                                    Spacer(),
                                  ],
                                )),
                          ],
                        )),
                        SizedBox(height: 22),
                        Container(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                height: 60,
                                width: 110,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xff262D62),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Spacer(),
                                    Icon(Icons.bedtime, color: Colors.white),
                                    Spacer(),
                                    Text("Sleep",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                        )),
                                    Spacer(),
                                  ],
                                )),
                            SizedBox(width: 22),
                            Container(
                                height: 60,
                                width: 110,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xff262D62),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Spacer(),
                                    Icon(Icons.adjust, color: Colors.white),
                                    Spacer(),
                                    Text("Breathe",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                        )),
                                    Spacer(),
                                  ],
                                )),
                          ],
                        )),
                      ],
                    )),
                    const SizedBox(height: 20),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: (Text("Meditation",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                            )))),
                    const SizedBox(height: 20),
                    Container(
                        height: 170,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            //ini satu kotak atau konten
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      image: DecorationImage(
                                          image: AssetImage('images/flow.png'),
                                          fit: BoxFit.cover),
                                    ),
                                    width: 170,
                                    height: 100),
                                SizedBox(
                                  height: 8,
                                ),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: (Text("Managing Anxiety on...",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        )))),
                                SizedBox(
                                  height: 5,
                                ),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: (Text("by Dr. Yuzuru Aoi, Ph.D.",
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(.7),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        )))),
                              ],
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      image: DecorationImage(
                                          image: AssetImage('images/pinke.jpg'),
                                          fit: BoxFit.cover),
                                    ),
                                    width: 170,
                                    height: 100),
                                SizedBox(
                                  height: 8,
                                ),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: (Text("Stop and Connect",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        )))),
                                SizedBox(
                                  height: 5,
                                ),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: (Text("by Dr. Eric Lopez, Ph.D.",
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(.7),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        )))),
                              ],
                            ),
                          ],
                        ))
                  ],
                ))
          ],
        ),
      ),
      bottomNavigationBar: Navbar(
        bgcolor: Color(0xff0F143E),
      ),
    );
  }
}
