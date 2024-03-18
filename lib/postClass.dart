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

// List<userpost> userinfo = List.generate(
//     100,
//     (index) => posts(
//           id: 1,
//           name: Faker.person.name();
//           faker.person.name();
//           // post: faker.lorem.sentence(),
//           // post: Random(faker.lorem.sentence()),
//         ));

// posts({required int id, required String Function() name}) {}

final List<userpost> userinfo = List.generate(
    50,
    (index) => userpost(
        id: index + 1,
        name: faker.person.name(),
        post: faker.lorem.sentences(5).toString(),
        reactions: Random().nextInt(200),
        profile: Image.asset('assets/images/person1.jpg')));
