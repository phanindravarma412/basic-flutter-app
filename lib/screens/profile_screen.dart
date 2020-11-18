import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/group_label.dart';
import 'package:whatsapp/widgets/photo_list.dart';
import 'package:whatsapp/widgets/profile_card.dart';
import 'package:whatsapp/widgets/profile_image.dart';

class MyProfileScreen extends StatefulWidget {
  @override
  _MyProfileScreenState createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.black,
            ),
            onPressed: () {
              print('open setting');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 40.0,
                ),
                ProfileImage(
                  imageUrl: 'https://randomuser.me/api/portraits/women/40.jpg',
                  size: 45.0,
                ),
                SizedBox(
                  width: 20.0,
                ),
                ProfileCard(
                  username: 'Phanindra Varma',
                  subtitle: 'phani.varma',
                  location: 'india',
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            GroupLabel(
              likes: 2200,
              followers: 120,
              following: 98,
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: PhotoList(),
            )
          ],
        ),
      ),
    );
  }
}
