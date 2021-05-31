import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:football_ticket/models/image_obj.dart';
import 'package:football_ticket/models/evenement.dart';

class Dummy {
  static Random random = new Random();

  static const List<String> all_images = [
    "image_1.jpg",
    "image_2.jpg",
    "image_3.jpg",
    
  ];

  static const List<String> strings_medium = [
   "CAMEROUN VS NIGERIA",
    "NIGERIA VS GABON",
    "GUINEE VS EGYPTE",
  ];

  static const List<String> evenement_period = [

    "Quart de final",
    "huitieme de final",
    "final",


  ];
  static const List<String> full_date = [
    "Sam, 05 Dec 15, 11:30 AM",
    "Lun, 22 Apr 13, 06:12 PM",
    "Mer, 14 Sep 15, 09:21 PM",
  ];

  static List<evenement> getevenementData(int count) {
    List<evenement> items = [];
    for (int i = 0; i < count; i++) {
      evenement obj = new evenement();
      obj.image = all_images[random.nextInt(all_images.length)];
      obj.title = strings_medium[random.nextInt(strings_medium.length)];
      obj.subtitle = evenement_period[random.nextInt(evenement_period.length)];
      obj.date = full_date[random.nextInt(full_date.length)];
      items.add(obj);
    }
    return items;
  }

  static List<evenement> getevenemenDetailData() {
    List<evenement> items;
    return items;
  }
}
