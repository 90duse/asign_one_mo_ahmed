// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:shimmer/shimmer.dart';
import 'package:wowo/postClass.dart';
import 'package:faker/faker.dart';

myappbar() {
  return AppBar(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Facebook',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 30,
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

createpost() {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.all(2.0),
    margin: EdgeInsets.all(10.0),
    child: Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/duse.jpeg'),
          ),
          subtitle: TextField(
            maxLength: 100,
            decoration: InputDecoration(label: Text('What is your mind?')),
          ),
        ),
        Container(
          color: Colors.white,
          //padding: EdgeInsets.all(1.0),
          margin: EdgeInsets.only(bottom: 5.0),
          //decoration: BoxDecoration(
          //border: Border.all(color: Colors.black, width: 1.0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(padding: EdgeInsets.all(2.0)),
              TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.videocam,
                    color: Colors.red,
                  ),
                  label: Text('Live')),
              TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.photo_library,
                    color: Colors.lightGreen,
                  ),
                  label: Text('Photo')),
              TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.video_camera_back,
                    color: Color.fromARGB(255, 224, 127, 200),
                  ),
                  label: Text('Reels')),
            ],
          ),
        )
      ],
    ),
  );
}

// storysection() {
//   return Container(
//     color: const Color.fromARGB(255, 248, 243, 245),
//     padding: EdgeInsets.all(5),
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       children: [
//         Container(
//           width: 100,
//           height: 60,
//           child: Text('data'),
//           decoration: BoxDecoration(
//             shape: BoxShape.rectangle,
//             color: Colors.red,
//           ),
//         ),
//         Container(
//           width: 100,
//           height: 60,
//           child: Text('data'),
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             color: Colors.red,
//           ),
//         ),
//         Container(
//           width: 100,
//           height: 60,
//           child: Text('data'),
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             color: Colors.red,
//           ),
//         )
//       ],
//     ),
//   );
// }

post() {
  return ListView.separated(
    itemCount: userinfo.length,
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
                  //backgroundImage: AssetImage('assets/images/duse.jpeg'),
                  backgroundColor: Colors.purple,
                ),
                Padding(padding: EdgeInsets.only(right: 10.0)),
                Column(
                  children: [
                    Text(person.name),
                    Row(
                      children: [
                        Text('5 minute'),
                        Padding(padding: EdgeInsets.only(right: 10.0)),
                        Icon(Icons.public),
                      ],
                    )
                  ],
                ),
              ],
            ),
            // Icon(Icons.more_horiz),
            PopupMenuButton(
                shadowColor: Colors.red,
                itemBuilder: (BuildContext context) => [
                      PopupMenuItem(child: Text('Save')),
                      PopupMenuItem(child: Text('Edit')),
                      PopupMenuItem(child: Text('Delete')),
                    ])
          ],
        ),
        subtitle: Column(
          children: [
            Text(person.post),
            person.postImage,
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
  );
}
