import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/mood.dart';

class AddMoodCheck extends StatelessWidget {
  static const routeName = "/add-mood";
  final TextEditingController moodController = TextEditingController();
  final TextEditingController emotController = TextEditingController();
  final TextEditingController noteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final moods = Provider.of<Moods>(context, listen: false);
    return Scaffold(
        backgroundColor: Color(0xff6B336F),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: new Text("Check-In",
              style: TextStyle(
                color: Colors.white,
                fontSize: 23,
                fontWeight: FontWeight.w500,
              )),
        ),
        resizeToAvoidBottomInset: false,
        body: Container(
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
          padding: EdgeInsets.only(top: 5, bottom: 15, left: 10, right: 10),
          child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text(
                    "How are you feeling today?",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Form(
                    child: Column(
                      children: [
                        TextFormField(
                          autocorrect: false,
                          autofocus: true,
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white.withOpacity(0.6)),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              labelText: "Mood",
                              labelStyle:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                          textInputAction: TextInputAction.next,
                          controller: moodController,
                        ),
                        TextFormField(
                          autocorrect: false,
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white.withOpacity(0.6)),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              labelText: "Emotion",
                              labelStyle:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                          textInputAction: TextInputAction.next,
                          controller: emotController,
                        ),
                        TextFormField(
                          autocorrect: false,
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white.withOpacity(0.6)),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              labelText: "Notes",
                              labelStyle:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                          textInputAction: TextInputAction.done,
                          controller: noteController,
                          onEditingComplete: () {
                            moods
                                .addMood(
                              moodController.text,
                              emotController.text,
                              noteController.text,
                            )
                                .then(
                              (response) {
                                print("Back to Home");
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text("Added successfully"),
                                    duration: Duration(seconds: 2),
                                  ),
                                );
                                Navigator.pop(context);
                              },
                            );
                          },
                        ),
                        SizedBox(height: 50),
                        Container(
                          width: double.infinity,
                          alignment: Alignment.center,
                          child: TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.white),
                            onPressed: () {
                              moods
                                  .addMood(
                                moodController.text,
                                emotController.text,
                                noteController.text,
                              )
                                  .then(
                                (response) {
                                  print("Back to Home");
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text("Berhasil ditambahkan"),
                                      duration: Duration(seconds: 2),
                                    ),
                                  );
                                  Navigator.pop(context);
                                },
                              );
                            },
                            child: Text(
                              "Submit",
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xffA3489A)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ));
  }
}
