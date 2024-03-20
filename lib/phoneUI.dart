// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class phoneui extends StatelessWidget {
  const phoneui({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.center,
                colors: [
              Color.fromARGB(255, 0, 0, 0),
              // Color.fromARGB(26, 116, 116, 116),
              Color.fromARGB(149, 25, 5, 37),
            ])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(children: [
            SizedBox(
              height: 100,
              width: double.infinity,
              child: ListTile(
                //tileColor: Colors.white54,
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 7.0),
                      child: Icon(
                        Icons.call_made_outlined,
                        color: Colors.green,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 7.0),
                      child: Icon(
                        Icons.call,
                        color: Colors.white,
                        size: 20.0,
                      ),
                    ),
                    Text(
                      '00:05',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                trailing: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 200),
              child: SizedBox(
                height: 100,
                width: double.infinity,
                child: Center(
                  child: Text(
                    '2122',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 35.0,
                    ),
                  ),
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(85.0),
              child: Container(
                margin: EdgeInsets.all(21.0),
                height: 400,
                width: double.infinity,
                color: Color.fromARGB(255, 58, 58, 58),
                padding: EdgeInsets.all(10),
                child: GridView.count(
                  crossAxisCount: 3,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: 90,
                        width: 50,
                        //color: const Color.fromARGB(255, 194, 207, 212),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            Text('Add call',
                                style: TextStyle(color: Colors.white))
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: 100,
                        width: 50,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.pause,
                              color: Colors.white,
                            ),
                            Text(
                              'Hold call',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: 100,
                        width: 50,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.bluetooth,
                              color: Colors.white,
                            ),
                            Text(
                              'Bluetooth',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: 100,
                        width: 50,
                        //color: const Color.fromARGB(255, 88, 88, 88),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.speaker_phone_outlined,
                              color: Colors.white,
                            ),
                            Text(
                              'Speaker',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: 100,
                        width: 50,
                        //color: const Color.fromARGB(255, 88, 88, 88),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.volume_mute_rounded,
                              color: Colors.white,
                            ),
                            Text(
                              'Mute',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: 100,
                        width: 50,
                        //color: const Color.fromARGB(255, 88, 88, 88),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.keyboard,
                              color: Colors.white,
                            ),
                            Text(
                              'Keypad',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      width: 50,
                      //color: const Color.fromARGB(255, 88, 88, 88),
                    ),
                    SizedBox(
                      height: 100,
                      width: 50,
                      //color: const Color.fromARGB(255, 88, 88, 88),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                                child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                                color: Colors.red,
                              ),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.call_end,
                                    color: Colors.white,
                                    size: 40.0,
                                  )),
                            ))
                          ]),
                    ),
                    SizedBox(
                      height: 100,
                      width: 50,
                      //color: const Color.fromARGB(255, 88, 88, 88),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
