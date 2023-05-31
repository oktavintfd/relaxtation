import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/navbar.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0F143E),
      // ignore: prefer_const_constructors
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/cut.png'),
                fit: BoxFit.fitWidth,
                alignment: Alignment.topCenter)),
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 25,
                ),
                Container(
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
                        width: 180,
                      ),
                      Icon(
                        Icons.search,
                        color: Color(0xff0F143E),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                    height: 30,
                    child: Text("Search by Goal",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                        ))),
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
                                image: DecorationImage(
                                    image: AssetImage('images/cro.jpg'),
                                    fit: BoxFit.cover),
                              ),
                              height: 70,
                              child: ListTile(
                                title: Text('Improve Focus',
                                    style: TextStyle(
                                      color: Color(0xff000219),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    )),
                              )),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                image: DecorationImage(
                                    image: AssetImage('images/cropb.jpg'),
                                    fit: BoxFit.cover),
                              ),
                              height: 70,
                              child: ListTile(
                                title: Text('Calm city',
                                    style: TextStyle(
                                      color: Color(0xff000219),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    )),
                              )),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                image: DecorationImage(
                                    image: AssetImage('images/hus.png'),
                                    fit: BoxFit.cover),
                              ),
                              height: 70,
                              child: ListTile(
                                title: Text('Reduce Stress',
                                    style: TextStyle(
                                      color: Color(0xff000219),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    )),
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                image: DecorationImage(
                                    image: AssetImage('images/japan.jpg'),
                                    fit: BoxFit.cover),
                              ),
                              height: 70,
                              child: ListTile(
                                title: Text('Manage Pain',
                                    style: TextStyle(
                                      color: Color(0xff000219),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    )),
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
