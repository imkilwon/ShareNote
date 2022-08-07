import 'package:flutter/material.dart';
import 'package:no_name_note/constants/demoData.dart';
import 'CategoryView.dart';
import 'ImageView.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: ImagePage(),
          ),
          CategoryView(),

        ],
      ),
    ));
  }
}

