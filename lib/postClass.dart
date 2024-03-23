// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

var faker = Faker();

// ignore: camel_case_types
class userpost {
  int id;
  String name;
  String post;
  int reactions;
  Image profile;
  Image postImage;
  DateTime date;

  userpost({
    required this.id,
    required this.name,
    required this.post,
    required this.reactions,
    required this.profile,
    required this.postImage,
    required this.date,
  });
}

final List<userpost> userinfo = List.generate(
    4,
    (index) => userpost(
          id: index + 1,
          name: faker.person.name(),
          post: faker.lorem.sentences(5).toString(),
          reactions: Random().nextInt(200),
          postImage: Image.asset(
              picture.values.elementAt(Random().nextInt(picture.length))),
          profile: Image.asset(
              profileimage.elementAt(Random().nextInt(profileimage.length))),
          date: DateTime.now(),
        ));

var picture = <String, String>{
  "image1": "assets/images/image6.jpg",
  "image2": "assets/images/duse.jpeg",
  "image3": "assets/images/image5.jpeg",
  "image4": "assets/images/image4.jpeg",
};

List<String> profileimage = [
  "assets/images/image6.jpg",
  "assets/images/duse.jpeg",
  "assets/images/image5.jpeg",
  "assets/images/image4.jpeg"
];

// var profiles = <String, String>{
//   "image1": "assets/images/image6.jpg",
//   "image2": "assets/images/duse.jpeg",
//   "image3": "assets/images/image5.jpeg",
//   "image4": "assets/images/image4.jpeg",
// };

// class Profiless {
//   var image1 = "assets/images/image6.jpg";
//   var image2 = "assets/images/duse.jpeg";
//   var image3 = "assets/images/image5.jpeg";
//   var image4 = "assets/images/image4.jpeg";
// }
