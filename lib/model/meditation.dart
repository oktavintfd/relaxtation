import 'package:flutter/foundation.dart';

class Meditation with ChangeNotifier {
  final String id;
  final String title;
  final String creator;
  final String imageUrl;
  final String musicUrl;
  bool isFavorite;

  Meditation({
    required this.id,
    required this.title,
    required this.creator,
    required this.imageUrl,
    required this.musicUrl,
    this.isFavorite = false,
  });

  void statusFav() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
