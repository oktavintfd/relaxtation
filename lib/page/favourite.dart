import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/navbar.dart';

class Favourite extends StatelessWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0F143E),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/sunset.png'),
                fit: BoxFit.fitWidth,
                alignment: Alignment.topCenter)),
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(30),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                  Widget>[
            SizedBox(
              height: 45,
            ),
            Text("Favourite",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.w500,
                )),
            SizedBox(
              height: 30,
            ),
            Container(
                height: 20,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Text('Music',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        )),
                    SizedBox(
                      width: 25,
                    ),
                    Text('Meditation',
                        style: TextStyle(
                          color: Color.fromARGB(255, 115, 127, 221),
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        )),
                    SizedBox(
                      width: 25,
                    ),
                    Text('Soundscapes',
                        style: TextStyle(
                          color: Color.fromARGB(255, 115, 127, 221),
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        )),
                    SizedBox(
                      width: 25,
                    ),
                    Text('Sleep',
                        style: TextStyle(
                          color: Color.fromARGB(255, 115, 127, 221),
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        )),
                    SizedBox(
                      width: 25,
                    ),
                    Text('Breathe',
                        style: TextStyle(
                          color: Color.fromARGB(255, 115, 127, 221),
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        )),
                  ],
                )),
            SizedBox(
              height: 10,
            ),
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
                  width: 154,
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
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff0F143E),
                  // borderRadius: BorderRadius.only(
                  //     topLeft: Radius.circular(30),
                  //     topRight: Radius.circular(30))
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Color(0xff262D62),
                          ),
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage('images/laut.jpg'),
                            ),
                            title: Text('Mindful Morning',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                )),
                            subtitle: Text("Curated by Calm",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(.7),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                )),
                            trailing: Icon(
                              Icons.menu,
                              color: Colors.white,
                            ),
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Color(0xff262D62),
                          ),
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage('images/sakura.jpg'),
                            ),
                            title: Text('Headwaters',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                )),
                            subtitle: Text("East Forest",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(.7),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                )),
                            trailing: Icon(
                              Icons.menu,
                              color: Colors.white,
                            ),
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Color(0xff262D62),
                          ),
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage('images/pinke.jpg'),
                            ),
                            title: Text('Light of Day',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                )),
                            subtitle: Text("Odesza & Olafur Arnalds",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(.7),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                )),
                            trailing: Icon(
                              Icons.menu,
                              color: Colors.white,
                            ),
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Color(0xff262D62),
                          ),
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage('images/krem.png'),
                            ),
                            title: Text('Asleep',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                )),
                            subtitle: Text("Sleeping at Last",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(.7),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                )),
                            trailing: Icon(
                              Icons.menu,
                              color: Colors.white,
                            ),
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Color(0xff262D62),
                          ),
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage('images/sakura.jpg'),
                            ),
                            title: Text('Headwaters',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                )),
                            subtitle: Text("East Forest",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(.7),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                )),
                            trailing: Icon(
                              Icons.menu,
                              color: Colors.white,
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
      bottomNavigationBar: Navbar(
        bgcolor: Color(0xff0F143E),
      ),
    );
  }
}
