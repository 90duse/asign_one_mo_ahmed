// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

//import 'dart:ffi';
import 'dart:html';
import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:talowadag/postClass.dart';
import 'package:like_button/like_button.dart';
import 'package:faker/faker.dart';

class Facebookpost extends StatelessWidget {
  Facebookpost({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 244, 246, 247),
        appBar: AppBar(
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
        ),
        body: Column(
          children: [
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(2.0),
              margin: EdgeInsets.all(10.0),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/person1.jpg'),
                ),
                subtitle: TextField(
                  maxLength: 100,
                  decoration:
                      InputDecoration(label: Text('What is your mind?')),
                ),
              ),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(1.0),
              margin: EdgeInsets.only(bottom: 5.0),
              //decoration: BoxDecoration(
              //border: Border.all(color: Colors.black, width: 1.0)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.center,
                    onPressed: null,
                    icon: Icon(
                      Icons.live_tv_outlined,
                      color: Colors.red,
                    ),
                  ),
                  IconButton(
                    padding: EdgeInsets.all(20),
                    onPressed: null,
                    icon: Icon(
                      Icons.image,
                      color: Colors.lightGreen,
                    ),
                  ),
                  IconButton(
                    padding: EdgeInsets.all(20),
                    onPressed: null,
                    icon: Icon(
                      Icons.video_call,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: ListView.separated(
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                userpost person = userinfo[index];
                return ListTile(
                  tileColor: Colors.white,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w600/2023/10/free-images.jpg')),
                          Padding(padding: EdgeInsets.only(right: 10.0)),
                          Column(
                            children: [
                              Text(person.name),
                              Row(
                                children: [
                                  Text('5 minute'),
                                  Padding(
                                      padding: EdgeInsets.only(right: 10.0)),
                                  Icon(Icons.public),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      Icon(Icons.more_horiz)
                    ],
                  ),
                  subtitle: Column(
                    children: [
                      Text(person.post),
                      Image.asset('assets/images/person1.jpg'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          LikeButton(
                            likeCount: person.reactions,
                            isLiked: false,
                            likeCountPadding: EdgeInsets.all(10.0),
                            likeCountAnimationDuration: Duration(seconds: 01),
                          ),
                          Row(
                            children: [Icon(Icons.comment), Text('comments')],
                          ),

                          Row(
                            children: [
                              Icon(Icons.share_rounded),
                              Text('share'),
                            ],
                          ),

                          //Padding(padding: EdgeInsets.all(10)),
                        ],
                      ),
                    ],
                  ),

                  // trailing: Icon(Icons.more_horiz),
                );
              },
              separatorBuilder: (context, index) => const Divider(
                color: Colors.green,
              ),
            )),
          ],
        ),
      ),
    );
  }

  void setState(int i) {}
}
