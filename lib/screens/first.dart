import 'package:drawer/screens/second.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Text("Frist screen"),
      ElevatedButton(
        onPressed: () {
          Get.to(Second());
        },
        child: Text("Press"),
      ),
    ]);
  }
}
