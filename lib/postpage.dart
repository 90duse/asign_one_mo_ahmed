// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

//import 'dart:ffi';
import 'dart:html';
import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:wowo/myfunctions.dart';

class Facebookpost extends StatelessWidget {
  Facebookpost({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: myappbar(),
        body: Column(
          children: [createpost(), storysection(), Expanded(child: post())],
        ),
      ),
    );
  }
}
