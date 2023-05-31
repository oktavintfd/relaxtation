import 'package:flutter/foundation.dart';

class Music with ChangeNotifier {
  final String id;
  final String title;
  final String musician;
  final String imageUrl;
  bool isFavorite;

  Music({
    required this.id,
    required this.title,
    required this.musician,
    required this.imageUrl,
    this.isFavorite = false,
  });

  void statusFav() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
