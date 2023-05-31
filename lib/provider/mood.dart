// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import '../model/mood.dart';
// import 'package:intl/intl.dart';

// class Moods with ChangeNotifier {
//   String? token, userId;

//   void updateData(tokenData, uid) {
//     token = tokenData;
//     userId = uid;
//     notifyListeners();
//   }

//   String urlMaster = "https://mood-1edeb-default-rtdb.firebaseio.com/";
//   List<Mood> _allMood = [];
//   List<Mood> get allMood => _allMood;
//   int get jumlahMood => _allMood.length;

//   Mood selectById(String id) =>
//       _allMood.firstWhere((element) => element.id == id);

//   Future<void> addMood(String mood, String emot, String note) async {
//     Uri url = Uri.parse("$urlMaster/products.json?auth=$token");
//     DateTime datetimeNow = DateTime.now();

//     try {
//       var response = await http.post(
//         url,
//         body: json.encode({
//           "mood": mood,
//           "emot": emot,
//           "note": note,
//           "date": datetimeNow.toString(),
//           "userId": userId,
//         }),
//       );

//       if (response.statusCode > 300 || response.statusCode < 200) {
//         throw (response.statusCode);
//       } else {
//         Mood data = Mood(
//           id: json.decode(response.body)["name"].toString(),
//           mood: mood,
//           emot: emot,
//           note: note,
//           date: datetimeNow,
//         );

//         _allMood.add(data);
//         notifyListeners();
//       }
//     } catch (err) {
//       throw (err);
//     }
//   }

//   Future<void> editMood(
//       String id, String mood, String emot, String note) async {
//     Uri url = Uri.parse("$urlMaster/products.json?auth=$token");
//     DateTime date = DateTime.now();
//     try {
//       var response = await http.patch(
//         url,
//         body: json.encode({
//           "mood": mood,
//           "emot": emot,
//           "note": note,
//           "updatedAt": date.toString(),
//         }),
//       );

//       if (response.statusCode > 300 || response.statusCode < 200) {
//         throw (response.statusCode);
//       } else {
//         Mood selectMood = _allMood.firstWhere((element) => element.id == id);
//         selectMood.mood = mood;
//         selectMood.emot = emot;
//         selectMood.note = note;
//         notifyListeners();
//       }
//     } catch (err) {
//       throw (err);
//     }
//   }

//   Future<void> deleteMood(String id) async {
//     Uri url = Uri.parse("$urlMaster/products.json?auth=$token");
//     try {
//       var response = await http.delete(url);

//       if (response.statusCode > 300 || response.statusCode < 200) {
//         throw (response.statusCode);
//       } else {
//         _allMood.removeWhere((element) => element.id == id);
//         notifyListeners();
//       }
//     } catch (err) {
//       throw (err);
//     }
//   }

//   Future<void> initialData() async {
//     _allMood = [];
//     Uri url = Uri.parse("$urlMaster/products.json?auth=$token");

//     try {
//       var response = await http.get(url);

//       print(response.statusCode);

//       if (response.statusCode >= 300 && response.statusCode < 200) {
//         throw (response.statusCode);
//       } else {
//         var data = json.decode(response.body) as Map<String, dynamic>;
//         if (data != null) {
//           data.forEach(
//             (key, value) {
//               DateTime dateTimeParse =
//                   DateFormat("yyyy-mm-dd hh:mm:ss").parse(value["date"]);
//               Mood prod = Mood(
//                 id: key,
//                 date: dateTimeParse,
//                 emot: value["emot"],
//                 mood: value["mood"],
//                 note: value["note"],
//               );
//               _allMood.add(prod);
//             },
//           );
//         }
//       }
//     } catch (err) {
//       throw (err);
//     }
//   }
// }

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

    (jumlahMood == 0)
        ? dataResponse.forEach(
            (key, value) {
              print("ini jalan");
              DateTime dateTimeParse =
                  DateFormat("yyyy-mm-dd hh:mm:ss").parse(value["date"]);
              _allMood.add(
                Mood(
                  id: key,
                  date: dateTimeParse,
                  emot: value["emot"],
                  mood: value["mood"],
                  note: value["note"],
                ),
              );
              print(value);
            },
          )
        : print('skip');

    notifyListeners();
  }
}
