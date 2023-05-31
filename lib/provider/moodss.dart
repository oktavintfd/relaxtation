import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../model/mood.dart';
import 'package:intl/intl.dart';

class Moods with ChangeNotifier {
  List<Mood> _allMood = [];

  List<Mood> get allMood => _allMood;

  int get jumlahMood => _allMood.length;

  Mood selectById(String id) =>
      _allMood.firstWhere((element) => element.id == id);

  Future<void> addMood(String mood, String emot, String note) {
    DateTime datetimeNow = DateTime.now();

    Uri url =
        Uri.parse("https://mood-1edeb-default-rtdb.firebaseio.com/mood.json");
    print({mood, emot, note});
    return http
        .post(
      url,
      body: jsonEncode(
        {
          "mood": mood,
          "emot": emot,
          "note": note,
          "date": datetimeNow.toString(),
        },
      ),
    )
        .then(
      (response) {
        print("THEN FUNCTION");
        _allMood.add(
          Mood(
            id: json.decode(response.body)["name"].toString(),
            mood: mood,
            emot: emot,
            note: note,
            date: datetimeNow,
          ),
        );

        notifyListeners();
      },
    );
  }

  Future<void> editMood(String id, String mood, String emot, String note) {
    Uri url = Uri.parse(
        "https://mood-1edeb-default-rtdb.firebaseio.com/mood/$id.json");
    return http
        .put(
      url,
      body: json.encode(
        {
          "mood": mood,
          "emot": emot,
          "note": note,
        },
      ),
    )
        .then(
      (response) {
        Mood selectMood = _allMood.firstWhere((element) => element.id == id);
        selectMood.mood = mood;
        selectMood.emot = emot;
        selectMood.note = note;
        notifyListeners();
      },
    );
  }

  Future<void> deleteMood(String id) {
    Uri url = Uri.parse(
        "https://mood-1edeb-default-rtdb.firebaseio.com/mood/$id.json");
    return http.delete(url).then(
      (response) {
        _allMood.removeWhere((element) => element.id == id);
        notifyListeners();
      },
    );
  }

  Future<void> initialData() async {
    Uri url =
        Uri.parse("https://mood-1edeb-default-rtdb.firebaseio.com/mood.json");

    var hasilGetData = await http.get(url);

    var dataResponse = jsonDecode(hasilGetData.body) as Map<String, dynamic>;
    print(dataResponse);

    dataResponse.forEach(
      (key, value) {
        print("ini jalan");
        DateTime dateTimeParse =
            DateFormat("yyyy-mm-dd hh:mm:ss").parse(value["date"]);
        // _allMood.add(
        //   Mood(
        //     id: key,
        //     date: dateTimeParse,
        //     emot: value["emot"],
        //     mood: value["mood"],
        //     note: value["note"],
        //   ),
        // );
        print(value);
      },
    );

    notifyListeners();
  }
}
