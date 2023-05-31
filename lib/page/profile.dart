// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/provider/auth.dart';
// import 'package:flutter_application_1/widget/navbar.dart';
// import 'package:provider/provider.dart';

// class Profile extends StatelessWidget {
//   GlobalKey<ScaffoldState> _scaffoldKEy = GlobalKey<ScaffoldState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKEy,
//       backgroundColor: Color(0xff0F143E),
//       body: SingleChildScrollView(
//         child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//           Container(
//             height: 340,
//             width: 420,
//             decoration: const BoxDecoration(
//                 image: DecorationImage(
//                     image: AssetImage('images/sunset.png'), fit: BoxFit.cover)),
//             child: Container(
//                 child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 SizedBox(height: 40),
//                 Align(
//                     alignment: Alignment.centerRight,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         IconButton(
//                           onPressed: () =>
//                               _scaffoldKEy.currentState!.openEndDrawer(),
//                           icon: Icon(
//                             Icons.settings,
//                             color: Colors.white,
//                             size: 35.0,
//                           ),
//                         ),
//                         SizedBox(width: 15),
//                       ],
//                     )),
//                 SizedBox(height: 20),
//                 Center(
//                     child: CircleAvatar(
//                         backgroundImage: AssetImage('images/asdfs.png'),
//                         radius: 70)),
//                 SizedBox(height: 20),
//                 Center(
//                     child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text("Arrasyid Novia",
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 25,
//                           fontWeight: FontWeight.w500,
//                         )),
//                     SizedBox(width: 10),
//                     Icon(
//                       Icons.edit,
//                       color: Colors.white,
//                       size: 25.0,
//                     ),
//                   ],
//                 )),
//                 SizedBox(height: 3),
//                 Center(
//                     child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     CircleAvatar(
//                         backgroundImage: AssetImage('images/crown.png'),
//                         radius: 15),
//                     SizedBox(width: 10),
//                     Text("Lv. 21",
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 20,
//                           fontWeight: FontWeight.w400,
//                         ))
//                   ],
//                 )),
//               ],
//             )),
//           ),
//           SizedBox(height: 20),
//           Container(
//             padding: EdgeInsets.symmetric(horizontal: 20),
//             child: Column(children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Align(
//                       alignment: Alignment.centerLeft,
//                       child: (Text("Mood Check-Ins",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 22,
//                             fontWeight: FontWeight.w500,
//                           )))),
//                   IconButton(
//                       onPressed: () {
//                         Navigator.of(context).pushNamed('/moodlist');
//                       },
//                       icon: Icon(
//                         Icons.add,
//                         color: Colors.white,
//                         size: 25.0,
//                       ))
//                 ],
//               ),
//               SizedBox(height: 5),
//               Align(
//                 alignment: Alignment.centerLeft,
//                 child: Text("Sunday, 18/09/22",
//                     style: TextStyle(
//                       color: Colors.white.withOpacity(.7),
//                       fontSize: 14,
//                       fontWeight: FontWeight.w400,
//                     )),
//               ),
//               SizedBox(height: 10),
//               Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(16),
//                     color: Color(0xff262D62),
//                   ),
//                   padding: const EdgeInsets.all(15),
//                   height: 80,
//                   width: 430,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           CircleAvatar(
//                               backgroundImage: AssetImage('images/emot.png'),
//                               backgroundColor: Colors.transparent,
//                               radius: 20),
//                           SizedBox(width: 10),
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text("Sad",
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.w500,
//                                   )),
//                               SizedBox(height: 4),
//                               Text("'I got some trouble today'",
//                                   style: TextStyle(
//                                     color: Colors.white.withOpacity(.7),
//                                     fontSize: 14,
//                                     fontWeight: FontWeight.w400,
//                                   )),
//                             ],
//                           )
//                         ],
//                       )
//                     ],
//                   )),
//               SizedBox(height: 25),
//               Align(
//                 alignment: Alignment.centerLeft,
//                 child: Text("Weekly Progress",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 22,
//                       fontWeight: FontWeight.w500,
//                     )),
//               ),
//               SizedBox(height: 5),
//               Divider(
//                 thickness: 2,
//                 color: Colors.white,
//               ),
//               SizedBox(height: 10),
//               Container(
//                   child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Container(
//                       height: 80,
//                       width: 110,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Spacer(),
//                           Icon(Icons.self_improvement,
//                               color: Colors.white, size: 35),
//                           Spacer(),
//                           Text("7/15",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w500,
//                               )),
//                           Spacer(),
//                         ],
//                       )),
//                   Spacer(),
//                   Container(
//                       height: 80,
//                       width: 110,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Spacer(),
//                           Icon(Icons.music_note, color: Colors.white, size: 35),
//                           Spacer(),
//                           Text("11/15",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w500,
//                               )),
//                           Spacer(),
//                         ],
//                       )),
//                   Spacer(),
//                   Container(
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(16),
//                           gradient: LinearGradient(
//                             begin: Alignment.topLeft,
//                             end: Alignment.bottomRight,
//                             colors: [
//                               Color(0xFF4954AD),
//                               Color(0xff6712AA),
//                             ],
//                           )),
//                       height: 80,
//                       width: 110,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Spacer(),
//                           Icon(Icons.ac_unit, color: Colors.white, size: 35),
//                           Spacer(),
//                           Text("15/15",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w500,
//                               )),
//                           Spacer(),
//                         ],
//                       )),
//                 ],
//               )),
//               SizedBox(height: 15),
//               Container(
//                   child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(
//                       height: 80,
//                       width: 110,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Spacer(),
//                           Icon(Icons.bedtime, color: Colors.white, size: 35),
//                           Spacer(),
//                           Text("10/15",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w500,
//                               )),
//                           Spacer(),
//                         ],
//                       )),
//                   SizedBox(width: 22),
//                   Container(
//                       height: 80,
//                       width: 110,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Spacer(),
//                           Icon(Icons.adjust, color: Colors.white, size: 35),
//                           Spacer(),
//                           Text("9/15",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w500,
//                               )),
//                           Spacer(),
//                         ],
//                       )),
//                 ],
//               )),
//               SizedBox(height: 10),
//               Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(16),
//                     color: Color(0xff262D62),
//                   ),
//                   padding: const EdgeInsets.all(15),
//                   height: 70,
//                   width: 430,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Icon(
//                             Icons.military_tech,
//                             color: Colors.white,
//                             size: 30,
//                           ),
//                           SizedBox(width: 10),
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text("Get a Reward!",
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.w500,
//                                   )),
//                             ],
//                           )
//                         ],
//                       )
//                     ],
//                   )),
//               SizedBox(height: 15),
//             ]),
//           )
//         ]),
//       ),
//       bottomNavigationBar: Navbar(
//         bgcolor: Color(0xff0F143E),
//       ),
//       endDrawer: Drawer(
//           child: Container(
//         color: Color(0xff262D62),
//         child: Column(
//           children: [
//             SizedBox(
//               height: 60,
//             ),
//             Align(
//                 alignment: Alignment.center,
//                 child: Text("Settings",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 24,
//                       fontWeight: FontWeight.w400,
//                     ))),
//             SizedBox(
//               height: 30,
//             ),
//             Divider(
//               thickness: 2,
//               color: Colors.white,
//             ),
//             ListTile(
//                 leading: Icon(
//                   Icons.edit,
//                   color: Colors.white,
//                 ),
//                 title: Text(
//                   "Edit Profile",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 18,
//                     fontWeight: FontWeight.w400,
//                   ),
//                 )),
//             ListTile(
//                 leading: Icon(
//                   Icons.person,
//                   color: Colors.white,
//                 ),
//                 title: Text(
//                   "Account Settings",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 18,
//                     fontWeight: FontWeight.w400,
//                   ),
//                 )),
//             ListTile(
//                 leading: Icon(
//                   Icons.notifications,
//                   color: Colors.white,
//                 ),
//                 title: Text(
//                   "Notifications",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 18,
//                     fontWeight: FontWeight.w400,
//                   ),
//                 )),
//             ListTile(
//                 leading: Icon(
//                   Icons.translate,
//                   color: Colors.white,
//                 ),
//                 title: Text(
//                   "Change Language",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 18,
//                     fontWeight: FontWeight.w400,
//                   ),
//                 )),
//             Divider(
//               thickness: 2,
//               color: Colors.white,
//             ),
//             ListTile(
//                 leading: Icon(
//                   Icons.help_outline,
//                   color: Colors.white,
//                 ),
//                 title: Text(
//                   "Help & Support",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 18,
//                     fontWeight: FontWeight.w400,
//                   ),
//                 )),
//             ListTile(
//                 leading: Icon(
//                   Icons.verified_user,
//                   color: Colors.white,
//                 ),
//                 title: Text(
//                   "Terms & Privacy",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 18,
//                     fontWeight: FontWeight.w400,
//                   ),
//                 )),
//             ListTile(
//                 leading: Icon(
//                   Icons.info_outline,
//                   color: Colors.white,
//                 ),
//                 title: Text(
//                   "About",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 18,
//                     fontWeight: FontWeight.w400,
//                   ),
//                 )),
//             Divider(
//               thickness: 2,
//               color: Colors.white,
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             Align(
//               alignment: Alignment.center,
//               child: TextButton(
//                 onPressed: () =>
//                     Provider.of<Authentication>(context, listen: false)
//                         .logout(),
//                 child: Text(
//                   "Log Out",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 20,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       )),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/navbar.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/provider/auth.dart';

class Profile extends StatelessWidget {
  GlobalKey<ScaffoldState> _scaffoldKEy = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKEy,
      backgroundColor: Color(0xff0F143E),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: 340,
            width: 420,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/sunset.png'), fit: BoxFit.cover)),
            child: Container(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                Align(
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () =>
                              _scaffoldKEy.currentState!.openEndDrawer(),
                          icon: Icon(
                            Icons.settings,
                            color: Colors.white,
                            size: 35.0,
                          ),
                        ),
                        SizedBox(width: 15),
                      ],
                    )),
                SizedBox(height: 20),
                Center(
                    child: CircleAvatar(
                        backgroundImage: AssetImage('images/asdfs.png'),
                        radius: 70)),
                SizedBox(height: 20),
                Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Arrasyid Novia",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        )),
                    SizedBox(width: 10),
                    Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 25.0,
                    ),
                  ],
                )),
                SizedBox(height: 3),
                Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                        backgroundImage: AssetImage('images/crown.png'),
                        radius: 15),
                    SizedBox(width: 10),
                    Text("Lv. 21",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ))
                  ],
                )),
              ],
            )),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: (Text("Mood Check-Ins",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                          )))),
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/moodlist');
                      },
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 25.0,
                      ))
                ],
              ),
              SizedBox(height: 5),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Sunday, 18/09/22",
                    style: TextStyle(
                      color: Colors.white.withOpacity(.7),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    )),
              ),
              SizedBox(height: 10),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color(0xff262D62),
                  ),
                  padding: const EdgeInsets.all(15),
                  height: 80,
                  width: 430,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                              backgroundImage: AssetImage('images/emot.png'),
                              backgroundColor: Colors.transparent,
                              radius: 20),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Sad",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  )),
                              SizedBox(height: 4),
                              Text("'I got some trouble today'",
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(.7),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  )),
                            ],
                          )
                        ],
                      )
                    ],
                  )),
              SizedBox(height: 25),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Weekly Progress",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    )),
              ),
              SizedBox(height: 5),
              Divider(
                thickness: 2,
                color: Colors.white,
              ),
              SizedBox(height: 10),
              Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 80,
                      width: 110,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Spacer(),
                          Icon(Icons.self_improvement,
                              color: Colors.white, size: 35),
                          Spacer(),
                          Text("7/15",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              )),
                          Spacer(),
                        ],
                      )),
                  Spacer(),
                  Container(
                      height: 80,
                      width: 110,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Spacer(),
                          Icon(Icons.music_note, color: Colors.white, size: 35),
                          Spacer(),
                          Text("11/15",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              )),
                          Spacer(),
                        ],
                      )),
                  Spacer(),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xFF4954AD),
                              Color(0xff6712AA),
                            ],
                          )),
                      height: 80,
                      width: 110,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Spacer(),
                          Icon(Icons.ac_unit, color: Colors.white, size: 35),
                          Spacer(),
                          Text("15/15",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              )),
                          Spacer(),
                        ],
                      )),
                ],
              )),
              SizedBox(height: 15),
              Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 80,
                      width: 110,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Spacer(),
                          Icon(Icons.bedtime, color: Colors.white, size: 35),
                          Spacer(),
                          Text("10/15",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              )),
                          Spacer(),
                        ],
                      )),
                  SizedBox(width: 22),
                  Container(
                      height: 80,
                      width: 110,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Spacer(),
                          Icon(Icons.adjust, color: Colors.white, size: 35),
                          Spacer(),
                          Text("9/15",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              )),
                          Spacer(),
                        ],
                      )),
                ],
              )),
              SizedBox(height: 10),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color(0xff262D62),
                  ),
                  padding: const EdgeInsets.all(15),
                  height: 70,
                  width: 430,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.military_tech,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Get a Reward!",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  )),
                            ],
                          )
                        ],
                      )
                    ],
                  )),
              SizedBox(height: 15),
            ]),
          )
        ]),
      ),
      bottomNavigationBar: Navbar(
        bgcolor: Color(0xff0F143E),
      ),
      endDrawer: Drawer(
          child: Container(
        color: Color(0xff262D62),
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Align(
                alignment: Alignment.center,
                child: Text("Settings",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ))),
            SizedBox(
              height: 30,
            ),
            Divider(
              thickness: 2,
              color: Colors.white,
            ),
            ListTile(
                leading: Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
                title: Text(
                  "Edit Profile",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                )),
            ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                title: Text(
                  "Account Settings",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                )),
            ListTile(
                leading: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
                title: Text(
                  "Notifications",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                )),
            ListTile(
                leading: Icon(
                  Icons.translate,
                  color: Colors.white,
                ),
                title: Text(
                  "Change Language",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                )),
            Divider(
              thickness: 2,
              color: Colors.white,
            ),
            ListTile(
                leading: Icon(
                  Icons.help_outline,
                  color: Colors.white,
                ),
                title: Text(
                  "Help & Support",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                )),
            ListTile(
                leading: Icon(
                  Icons.verified_user,
                  color: Colors.white,
                ),
                title: Text(
                  "Terms & Privacy",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                )),
            ListTile(
                leading: Icon(
                  Icons.info_outline,
                  color: Colors.white,
                ),
                title: Text(
                  "About",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                )),
            Divider(
              thickness: 2,
              color: Colors.white,
            ),
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () =>
                    Navigator.of(context).pushReplacementNamed('/login'),
                child: Text(
                  "Log Out",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
