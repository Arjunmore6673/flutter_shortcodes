import 'package:drawer/screens/first.dart';
import 'package:drawer/screens/second.dart';
import 'package:drawer/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/homePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "flutter theme demo",
      theme: CustomTheme.lightTheme,
      darkTheme: CustomTheme.darkTheme,
      themeMode: currentTheme.currentTheme,
      getPages: [
        GetPage(name: "/home", page: () => MyHomePage()),
        GetPage(name: "/first", page: () => First()),
        GetPage(name: "/second", page: () => Second()),
      ],
      initialRoute: '/home',
    );
  }
}
