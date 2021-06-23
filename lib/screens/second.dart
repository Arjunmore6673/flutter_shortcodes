import 'package:drawer/controller/home-controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<Second> {
  final homeController = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Obx(() => Text(homeController.count.toString())),
      ),
    );
  }
}
