import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:no_name_note/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: '이름없는 노트',
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),
      home: const HomePage(),
    );
  }
}
