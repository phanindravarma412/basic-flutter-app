import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  ProfileCard(
      {@required this.username,
      @required this.subtitle,
      @required this.location});
  final String username;
  final String subtitle;
  final String location;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$username",
        ),
        Text(
          "@$subtitle",
          style: TextStyle(
            color: Colors.black54,
            fontSize: 15,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          "$location",
          style: TextStyle(
            color: Colors.black45,
            fontSize: 14.0,
          ),
        ),
      ],
    );
  }
}
