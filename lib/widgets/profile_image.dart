import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  ProfileImage({@required this.imageUrl, this.size});

  final String imageUrl;
  final double size;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: size ?? 30.0,
      backgroundImage: NetworkImage(imageUrl),
    );
  }
}
