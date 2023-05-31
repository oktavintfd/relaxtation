import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/mood.dart';

class EditMood extends StatelessWidget {
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
      appBar: AppBar(
        title: Text("DETAIL PLAYER"),
      ),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Container(
                  width: 150,
                  height: 150,
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
                decoration: InputDecoration(labelText: "Nama"),
                textInputAction: TextInputAction.next,
                controller: moodController,
              ),
              TextFormField(
                autocorrect: false,
                decoration: InputDecoration(labelText: "Posisi"),
                textInputAction: TextInputAction.next,
                controller: noteController,
              ),
              TextFormField(
                autocorrect: false,
                decoration: InputDecoration(labelText: "Image URL"),
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
                alignment: Alignment.centerRight,
                child: OutlinedButton(
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
                          content: Text("Berhasil diubah"),
                          duration: Duration(seconds: 2),
                        ),
                      );
                      Navigator.pop(context);
                    });
                  },
                  child: Text(
                    "Edit",
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
