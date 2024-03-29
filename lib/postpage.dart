// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

//import 'dart:ffi';

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
      Duration(seconds: 1),
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
        body: SafeArea(
            child: !isLoaded
                ? Shimmer.fromColors(
                    baseColor: Color.fromARGB(255, 63, 62, 62),
                    highlightColor: Color.fromARGB(255, 153, 147, 147),
                    direction: ShimmerDirection.ltr,
                    child: Column(
                      children: [createpost(), Expanded(child: post())],
                    ),
                  )
                : Column(
                    children: <Widget>[createpost(), Expanded(child: post())])),
      ),
    );
  }
}
