import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GroupLabel extends StatelessWidget {
  GroupLabel(
      {@required this.likes,
      @required this.followers,
      @required this.following});
  final int likes;
  final int followers;
  final int following;
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(left: 45.0, right: 45.0),
      // alignment: Alignment(0.0 ,0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '$likes' ?? 'likes',
              ),
              Text('likes'),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '$followers' ?? 'followers',
              ),
              Text('followers'),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '$following' ?? 'following',
              ),
              Text('following'),
            ],
          ),
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: Colors.white,
      ),
      height: 92.0,
      width: 350.0,
    );
  }
}
