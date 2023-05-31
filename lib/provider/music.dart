import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/model/meditation.dart';
import '../model/music.dart';

class Musics with ChangeNotifier {
  final List<Music> _allMusics = [
    Music(
      id: '1',
      title: "Headwaters",
      musician: "East Forest",
      imageUrl: "images/sakura.jpg",
      // next : ".."
    ),
    Music(
      id: '2',
      title: "Light of Day",
      musician: "Odesza & Olafur Arnalds",
      imageUrl: "images/pinke.jpg",
      // next : ".."
    ),
    Music(
      id: '3',
      title: "Asleep",
      musician: "Sleeping at Last",
      imageUrl: "images/krem.png",
      // next : ".."
    ),
    Music(
      id: '4',
      title: "SOS Breath Work",
      musician: "Chibs Okereke",
      imageUrl: "images/ava.jpg",
      // next : ".."
    ),
    Music(
      id: '5',
      title: "Calm Down",
      musician: "Park Jenifer",
      imageUrl: "images/spir.jpg",
      // next : ".."
    ),
    Music(
      id: '6',
      title: "One-Minute Reset",
      musician: "Teresa Bevel",
      imageUrl: "images/water.jpg",
      // next : ".."
    ),
    Music(
      id: '7',
      title: "Tour Your Senses",
      musician: "Serena Hali",
      imageUrl: "images/bank.png",
      // next : ".."
    ),
    Music(
      id: '8',
      title: "Finding Joy",
      musician: "Lionet Dera",
      imageUrl: "images/marb.jpg",
      // next : ".."
    ),
    Music(
      id: '9',
      title: "7 Days of Calm",
      musician: "Tamara Levitt",
      imageUrl: "images/hol.jpg",
      // next : ".."
    ),
    Music(
      id: '10',
      title: "Start Here",
      musician: "Jeff Warren",
      imageUrl: "images/fish.png",
      // next : ".."
    ),
  ];

  List<Music> get allMusics {
    return [..._allMusics];
  }

  Music findById(musicId) {
    return _allMusics.firstWhere((musId) => musId.id == musicId);
  }

  // void addProduct() {
  //   _allproducts.add(value);
  //   notifyListeners();
  // }

}
