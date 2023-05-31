import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/mood.dart';

class AddMood extends StatelessWidget {
  static const routeName = "/add-mood";
  final TextEditingController moodController = TextEditingController();
  final TextEditingController emotController = TextEditingController();
  final TextEditingController noteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final moods = Provider.of<Moods>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("MOOD CHECK-IN"),
        // actions: [
        //   IconButton(
        //     icon: Icon(Icons.save),
        //     onPressed: () {
        //       moods
        //           .addMood(
        //         moodController.text,
        //         emotController.text,
        //         noteController.text,
        //       )
        //           .then(
        //         (response) {
        //           print("Back to Home");
        //           ScaffoldMessenger.of(context).showSnackBar(
        //             SnackBar(
        //               content: Text("Berhasil ditambahkan"),
        //               duration: Duration(seconds: 2),
        //             ),
        //           );
        //           Navigator.pop(context);
        //         },
        //       );
        //     },
        //   ),
        // ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                autocorrect: false,
                autofocus: true,
                decoration: InputDecoration(labelText: "Mood"),
                textInputAction: TextInputAction.next,
                controller: moodController,
              ),
              TextFormField(
                autocorrect: false,
                decoration: InputDecoration(labelText: "Emotion"),
                textInputAction: TextInputAction.next,
                controller: emotController,
              ),
              TextFormField(
                autocorrect: false,
                decoration: InputDecoration(labelText: "Notes"),
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
                          content: Text("Berhasil ditambahkan"),
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
                alignment: Alignment.centerRight,
                child: OutlinedButton(
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
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
