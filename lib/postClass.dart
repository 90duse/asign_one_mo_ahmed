// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';
import 'dart:math';
import 'dart:ui';

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

// class Sawiro {
//   var image4 = 'assets/images/image4.jpeg';
//   var image5 = 'assets/images/duse.jpeg';
//   var image6 = 'assets/images/image6.jpg';
//   var image1 = 'assets/images/image5.jpeg';
// }

//var swr = Sawiro();
final List<userpost> userinfo = List.generate(
    4,
    (index) => userpost(
          id: index + 1,
          name: faker.person.name(),
          post: faker.lorem.sentences(5).toString(),
          reactions: Random().nextInt(200),
          postImage: Image.asset(picture.values.elementAt(index)),
          //postImage: Image.asset('${picture.values.first}'),
          profile: Image.asset(picture.values.elementAt(index)),
        ));
// profile: Image.asset('assets/images/${picture.keys.indexed}')));

var picture = <String, String>{
  "image1": "assets/images/image6.jpg",
  "image2": "assets/images/duse.jpeg",
  "image3": "assets/images/image5.jpeg",
  "image4": "assets/images/image4.jpeg",
};
