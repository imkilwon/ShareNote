import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text("메뉴"),
        actions: [
          IconButton(onPressed:(){} ,icon: Icon(Icons.settings)),
          IconButton(onPressed:(){} ,icon: Icon(Icons.backspace_outlined)),
        ],
      ),
    );
  }
}
