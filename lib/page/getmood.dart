import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../page/checkin.dart';

import '../provider/mood.dart';

class Getmood extends StatefulWidget {
  @override
  _MoodlistState createState() => _MoodlistState();
}

class _MoodlistState extends State<Getmood> {
  bool isInit = true;
  @override
  void didChangeDependencies() {
    if (isInit) {
      Provider.of<Moods>(context).initialData();
    }
    isInit = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final allMoodProvider = Provider.of<Moods>(context);
    return Scaffold(
        backgroundColor: Color(0xff6B336F),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: new Text("Mood Check-Ins",
              style: TextStyle(
                color: Colors.white,
                fontSize: 23,
                fontWeight: FontWeight.w500,
              )),
          actions: [
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                Navigator.of(context).pushNamed('/moodcheck');
              },
            ),
          ],
        ),
        body:

            //IF THERE IS NO DATA
            (allMoodProvider.jumlahMood == 0)
                ? Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF6B336F),
                        Color(0xFFA3489A),
                        Color(0xffF3879A),
                        Color(0xffF3879A),
                      ],
                    )),
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "No Data",
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                        SizedBox(height: 20),
                        OutlinedButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/moodcheck');
                          },
                          child: Text(
                            "Add Mood",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  )

                //IF THERE ARE SOME DATA
                : Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF6B336F),
                        Color(0xFFA3489A),
                        Color(0xffF3879A),
                        Color(0xffF3879A),
                      ],
                    )),
                    padding: EdgeInsets.only(
                        top: 5, bottom: 15, left: 10, right: 10),
                    child: ListView.builder(
                      itemCount: allMoodProvider.jumlahMood,
                      itemBuilder: (context, index) {
                        var id = allMoodProvider.allMood[index].id;
                        return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Color(0xff262D62).withOpacity(0.55),
                            ),
                            padding: const EdgeInsets.only(top: 15),
                            margin: EdgeInsets.only(bottom: 25),
                            height: 120,
                            width: 430,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    DateFormat.yMMMMd().format(
                                        allMoodProvider.allMood[index].date),
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ),
                                ListTile(
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed('/editmood', arguments: id);
                                  },
                                  leading: CircleAvatar(
                                    backgroundImage: AssetImage(
                                      allMoodProvider.allMood[index].emot,
                                    ),
                                    backgroundColor: Colors.transparent,
                                  ),
                                  title: Text(
                                      allMoodProvider.allMood[index].mood,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20)),
                                  subtitle: Text(
                                      allMoodProvider.allMood[index].note,
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.6),
                                          fontSize: 14)),
                                  trailing: IconButton(
                                    onPressed: () {
                                      allMoodProvider.deleteMood(id).then(
                                        (_) {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text("Deleted"),
                                              duration:
                                                  Duration(milliseconds: 500),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    icon: Icon(
                                      Icons.delete,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ));
                      },
                    ),
                  ));
  }
}
