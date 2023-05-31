import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/mood.dart';

class UpdateMood extends StatelessWidget {
  static const routeName = "/edit-mood";

  @override
  Widget build(BuildContext context) {
    final moods = Provider.of<Moods>(context, listen: false);
    final moodId = ModalRoute.of(context)!.settings.arguments as String;
    final selectMood = moods.selectById(moodId);
    final TextEditingController moodController =
        TextEditingController(text: selectMood.mood);
    final TextEditingController emotController =
        TextEditingController(text: selectMood.emot);
    final TextEditingController noteController =
        TextEditingController(text: selectMood.note);
    return Scaffold(
        backgroundColor: Color(0xff6B336F),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: new Text("Change Your Mood",
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
            child: Form(
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(emotController.text),
                        ),
                      ),
                    ),
                  ),
                  TextFormField(
                    autocorrect: false,
                    autofocus: true,
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white.withOpacity(0.6)),
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
                          borderSide:
                              BorderSide(color: Colors.white.withOpacity(0.6)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        labelText: "Emotion",
                        labelStyle:
                            TextStyle(color: Colors.white, fontSize: 16)),
                    textInputAction: TextInputAction.next,
                    controller: noteController,
                  ),
                  TextFormField(
                    autocorrect: false,
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white.withOpacity(0.6)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        labelText: "Notes",
                        labelStyle:
                            TextStyle(color: Colors.white, fontSize: 16)),
                    textInputAction: TextInputAction.done,
                    controller: emotController,
                    onEditingComplete: () {
                      moods
                          .editMood(
                        moodId,
                        moodController.text,
                        emotController.text,
                        noteController.text,
                      )
                          .then((value) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Berhasil diubah"),
                            duration: Duration(seconds: 2),
                          ),
                        );
                        Navigator.pop(context);
                      });
                    },
                  ),
                  SizedBox(height: 50),
                  Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: TextButton(
                      style:
                          TextButton.styleFrom(backgroundColor: Colors.white),
                      onPressed: () {
                        moods
                            .editMood(
                          moodId,
                          moodController.text,
                          emotController.text,
                          noteController.text,
                        )
                            .then((value) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("Changed successfully"),
                              duration: Duration(seconds: 2),
                            ),
                          );
                          Navigator.pop(context);
                        });
                      },
                      child: Text(
                        "Edit",
                        style:
                            TextStyle(fontSize: 18, color: Color(0xffA3489A)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
