// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

//import 'dart:ffi';
import 'dart:html';
import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:wowo/myfunctions.dart';
import 'package:shimmer/shimmer.dart';

class Facebookpost extends StatefulWidget {
  const Facebookpost({super.key});

  @override
  State<Facebookpost> createState() => _FacebookpostState();
}

class _FacebookpostState extends State<Facebookpost> {
  bool isLoaded = false;
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 3),
      () {
        setState(() {
          isLoaded = true;
        });
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: myappbar(),
        body: Column(
          children: [createpost(), Expanded(child: post())],
        ),
      ),
    );
  }
}

//  Shimmer.fromColors(
//           baseColor: const Color.fromARGB(255, 253, 245, 245),
//           highlightColor: const Color.fromARGB(255, 91, 224, 95),
//           direction: ShimmerDirection.ltr,