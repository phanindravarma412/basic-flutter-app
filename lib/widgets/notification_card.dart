import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/profile_image.dart';

class NotificationCard extends StatelessWidget {
  NotificationCard(
      {@required this.personName,
      @required this.action,
      this.message,
      @required this.time});
  final String personName;
  final String action;
  final String message;
  final String time;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ProfileImage(
        imageUrl: "https://randomuser.me/api/portraits/women/32.jpg",
      ),
      title: RichText(
        text: TextSpan(
          style: TextStyle(fontSize: 14.0, color: Colors.black, height: 1.5),
          children: <TextSpan>[
            TextSpan(
                text: '$personName',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
              text: ' $action',
            ),
            TextSpan(
                text: ' "$message"',
                style: TextStyle(fontStyle: FontStyle.italic))
          ],
        ),
      ),
      trailing: Text('$time'),
    );
  }
}
