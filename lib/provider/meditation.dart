import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/model/meditation.dart';
import '../model/meditation.dart';

class Meditations with ChangeNotifier {
  final List<Meditation> _allMeditations = [
    Meditation(
      id: '1',
      title: "Managing Anxiety on...",
      creator: "by Dr. Yuzuru Aoi, Ph.D.",
      imageUrl: "images/flow.png",
      musicUrl: 'asset:///music/last_stardust.mp3',
      // next : ".."
    ),
    Meditation(
      id: '2',
      title: "Stop and Connect",
      creator: "by Dr. Eric Lopez, Ph.D.",
      imageUrl: "images/pinke.jpg",
      musicUrl: 'asset:///music/last_stardust.mp3',
      // next : ".."
    ),
    Meditation(
      id: '3',
      title: "Respond, Don't React",
      creator: "by Elena Yura",
      imageUrl: "images/muls.jpg",
      musicUrl: 'asset:///music/last_stardust.mp3',
      // next : ".."
    ),
    Meditation(
      id: '4',
      title: "SOS Breath Work",
      creator: "by Chibs Okereke",
      imageUrl: "images/ava.jpg",
      musicUrl: 'asset:///music/last_stardust.mp3',
      // next : ".."
    ),
    Meditation(
      id: '5',
      title: "Calm Down",
      creator: "by Park Jenifer",
      imageUrl: "images/spir.jpg",
      musicUrl: 'asset:///music/last_stardust.mp3',
      // next : ".."
    ),
    Meditation(
      id: '6',
      title: "One-Minute Reset",
      creator: "by Teresa Bevel",
      imageUrl: "images/water.jpg",
      musicUrl: 'asset:///music/last_stardust.mp3',
      // next : ".."
    ),
    Meditation(
      id: '7',
      title: "Tour Your Senses",
      creator: "by Serena Hali",
      imageUrl: "images/bank.png",
      musicUrl: 'asset:///music/last_stardust.mp3',
      // next : ".."
    ),
    Meditation(
      id: '8',
      title: "Finding Joy",
      creator: "by Lionet Dera",
      imageUrl: "images/marb.jpg",
      musicUrl: 'asset:///music/last_stardust.mp3',
      // next : ".."
    ),
    Meditation(
      id: '9',
      title: "7 Days of Calm",
      creator: "by Tamara Levitt",
      imageUrl: "images/hol.jpg",
      musicUrl: 'asset:///music/last_stardust.mp3',
      // next : ".."
    ),
    Meditation(
      id: '10',
      title: "Start Here",
      creator: "by Jeff Warren",
      imageUrl: "images/fish.png",
      musicUrl: 'asset:///music/last_stardust.mp3',
      // next : ".."
    ),
  ];

  List<Meditation> get allMeditations {
    return [..._allMeditations];
  }

  Meditation findById(meditationId) {
    return _allMeditations.firstWhere((medId) => medId.id == meditationId);
  }

  // void addProduct() {
  //   _allproducts.add(value);
  //   notifyListeners();
  // }

}
