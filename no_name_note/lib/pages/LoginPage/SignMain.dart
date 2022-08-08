import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:no_name_note/pages/LoginPage/login.dart';

import 'signUp.dart';

class SignUpMain extends StatelessWidget {
  const SignUpMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: Column(
          children: [
            Column(
              children: [
                Text(
                  "Welcome in Your Record",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "가입 후, 당신의 기록을 영구적으로 저장할 수 있고, \n기록들을 거래할 수 있습니다. \n원하는 기록을 찾아보세요!",
                  style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/yoonANote6.jpeg")),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/9,),
            Column(
              children: [
                MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: (){
                    Get.to(()=>LoginPage());
                  },
                  shape: RoundedRectangleBorder(
                    side:BorderSide(
                      color: Colors.lightBlueAccent,
                    ),

                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text("Login",style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18
                  ),),
                ),
                SizedBox(height: 20,),
                MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: (){
                    Get.to(()=>SignUpPage());
                  },
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text("Sign Up",style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color:Colors.lightBlueAccent,
                    fontSize: 18
                  ),),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
