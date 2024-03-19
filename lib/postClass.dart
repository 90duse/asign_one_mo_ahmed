// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

var faker = new Faker();

class userpost {
  int id;
  String name;
  String post;
  int reactions;
  Image profile;

  userpost(
      {required this.id,
      required this.name,
      required this.post,
      required this.reactions,
      required this.profile});
}

// class Sawiro {
//   var image1 = 'assets/images/free-images.jpg';
//   var image2 = 'assets/images/image2.jpg';
//   var image3 = 'assets/images/images3.jpg';
//   var image4 = 'assets/images/images4.jpg';

//   Sawiro(
//     this.image1,
//     this.image2,
//     this.image3,
//     this.image4,
//   );
// }

final List<userpost> userinfo = List.generate(
    10,
    (index) => userpost(
        id: index + 1,
        name: faker.person.name(),
        post: faker.lorem.sentences(5).toString(),
        reactions: Random().nextInt(200),
        profile: Image.asset('assets/images/profile.jpeg')));
