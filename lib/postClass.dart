// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';
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
  Image postImage;

  userpost(
      {required this.id,
      required this.name,
      required this.post,
      required this.reactions,
      required this.profile,
      required this.postImage});
}

class Sawiro {
  var image1 = 'assets/images/eyes.webp';
  var image5 = 'assets/images/duse.jpeg';
  var image6 = 'assets/images/image6.jpg';
}

final List<userpost> userinfo = List.generate(
    10,
    (index) => userpost(
          id: index + 1,
          name: faker.person.name(),
          post: faker.lorem.sentences(5).toString(),
          reactions: Random().nextInt(200),
          //postImage: Image.asset(Sawiro().image6),
          postImage: Image.asset('${picture.values.last}'),
          profile: Image.asset('${picture.values}'),
        ));
// profile: Image.asset('assets/images/${picture.keys.indexed}')));

var picture = <String, String>{
  "image1": "assets/images/image6.jpg",
  "image2": "assets/images/duse.jpeg"
};
