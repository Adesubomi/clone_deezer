import 'dart:math';

import 'dart:math';

import 'dart:math';

import 'dart:math';

import 'dart:math';

import 'dart:math';

import 'dart:math';

import 'dart:math';

import 'dart:math';

import 'dart:math';

import 'package:flutter/material.dart';

class DataMock {

  static List<String> get genres => [
    "Pop", "Dance & EDM", "R & B", "Electronic", "Rock",
    "Blues", "Soul & Funk", "Rap", "African music", "Raggae",
    "Soundtracks", "Jazz",
  ];

  static List<Map<String, dynamic>> get recommendedPlaylists => [
    {"image": "assets/img/art-01.jpg", "title": "Pop Rewind", "tracks": Random().nextInt(60), "position": 54.0, "align": TextAlign.right },
    {"image": "assets/img/art-02.jpg", "title": "Piano Ballads", "tracks": Random().nextInt(60), "position": 8.0, "align": TextAlign.center },
    {"image": "assets/img/art-03.jpg", "title": "EDM Pop", "tracks": Random().nextInt(60), "position": 8.0, "align": TextAlign.center },
    {"image": "assets/img/art-04.jpg", "title": "Urban Party Hits", "tracks": Random().nextInt(60), "position": 8.0, "align": TextAlign.center },
    {"image": "assets/img/art-05.jpg", "title": "Dance Pop", "tracks": Random().nextInt(60), "position": 8.0, "align": TextAlign.center },
    {"image": "assets/img/art-06.jpg", "title": "Loves Me Pop", "tracks": Random().nextInt(60), "position": 8.0, "align": TextAlign.center },
    {"image": "assets/img/art-07.jpg", "title": "New Hits SA", "tracks": Random().nextInt(60), "position": 8.0, "align": TextAlign.center },
    {"image": "assets/img/art-08.jpg", "title": "Pop Joy", "tracks": Random().nextInt(60), "position": 8.0, "align": TextAlign.center },
    {"image": "assets/img/art-09.jpg", "title": "Pop All Stars", "tracks": Random().nextInt(60), "position": 8.0, "align": TextAlign.center },
    {"image": "assets/img/art-10.jpg", "title": "Acoustic Pop", "tracks": Random().nextInt(60), "position": 8.0, "align": TextAlign.center },
  ];
}