import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:no_name_note/pages/LoginPage/SignMain.dart';

import 'pages/HomePage/home.dart';

void main() => runApp(NoNameNote());

class NoNameNote extends StatelessWidget {
  const NoNameNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'no_name_note',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(color: Colors. white, elevation: 0),
      ),
      home: SingUpMain(),
      /*DefaultTabController(
        length: 6,
          child: HomePage(),
      ),*/
    );
  }
}
