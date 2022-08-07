import 'package:flutter/material.dart';

class GongSi extends StatelessWidget {
  const GongSi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0,right : 10.0),
            child: Image.asset('assets/images/yoonANote1.jpeg',height: 170,),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0,right : 10.0),
            child: Image.asset('assets/images/yoonANote2.jpeg',height: 170,),
          ),Padding(
            padding: const EdgeInsets.only(left: 10.0,right : 10.0),
            child: Image.asset('assets/images/yoonANote3.jpeg',height: 170,),
          ),Padding(
            padding: const EdgeInsets.only(left: 10.0,right : 10.0),
            child: Image.asset('assets/images/yoonANote4.jpeg',height: 170,),
          ),Padding(
            padding: const EdgeInsets.only(left: 10.0,right : 10.0),
            child: Image.asset('assets/images/yoonANote5.jpeg',height: 170,),
          ),Padding(
            padding: const EdgeInsets.only(left: 10.0,right : 10.0),
            child: Image.asset('assets/images/yoonANote6.jpeg',height: 170,),
          ),
        ],
      ),
    );
  }
}
