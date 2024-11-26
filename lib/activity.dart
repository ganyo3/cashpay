import 'package:flutter/material.dart';

class Activity extends StatefulWidget {
  @override
  const Activity({super.key});

  @override
  State<StatefulWidget> createState() {
    return ActivityState();
  }
}

class ActivityState extends State<Activity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.amber,
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
