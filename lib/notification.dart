import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  @override
  const NotificationPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return NotificationPageState();
  }
}

class NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
    body: ListView(
        children: const [
          Row(
            children: [
              Drawer(),
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/bone.jpg"),
              )
            ],
          )
        ],
      ),
    );
  }
}
