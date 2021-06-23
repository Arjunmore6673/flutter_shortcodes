import 'package:drawer/controller/home-controller.dart';
import 'package:flutter/material.dart';

import 'package:drawer/themes.dart';
import 'package:get/get.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final homeController = Get.put(HomeController());
  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter theme",
          style: TextStyle(color: Theme.of(context).accentColor),
        ),
        actions: [
          IconButton(
            onPressed: () {
              currentTheme.toggleTheme();
            },
            icon: Icon(Icons.brightness_4_rounded),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Text("helo"),
            Obx(() => Text(homeController.count.toString())),
            ElevatedButton(
              onPressed: () {
                homeController.increment();
              },
              child: Text("Increment"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/first");
              },
              child: Text("Press"),
            )
          ],
        ),
      ),
    );
  }
}
