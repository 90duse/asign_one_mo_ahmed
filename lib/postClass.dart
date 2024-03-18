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

final List<userpost> userinfo = List.generate(
    50,
    (index) => userpost(
        id: index + 1,
        name: faker.person.name(),
        post: faker.lorem.sentences(5).toString(),
        reactions: Random().nextInt(200),
        profile: Image.asset('assets/images/free-images.jpg')));

// image List
// final List<Image> sawiro = [
//   Image.asset('free-images.jpg'),
//   Image.asset('image1.jpg'),
//   Image.asset('image2.jpg'),
//   Image.asset('images3.jpg'),
//   Image.asset('image4.jpg'),
//   Image.asset('person-4.png'),
//   Image.asset('profile.jpeg')
// ];

myappbar() {
  return AppBar(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Facebook',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 50,
            fontWeight: FontWeight.w700,
          ),
        ),
        Icon(Icons.search),
        Padding(padding: EdgeInsets.only(right: 1))
      ],
    ),
    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
    elevation: 0,
  );
}
