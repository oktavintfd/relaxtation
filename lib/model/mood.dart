import 'package:flutter/foundation.dart';

class Mood with ChangeNotifier {
  String id;
  String mood;
  String emot;
  String note;
  DateTime date;

  Mood({
    required this.id,
    required this.mood,
    required this.emot,
    required this.note,
    required this.date,
  });
}
