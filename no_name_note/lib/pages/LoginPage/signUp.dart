import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:no_name_note/pages/LoginPage/login.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.lightBlueAccent,
          ), //이후에 svg파일로 변경
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height - 50,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    "회원 가입",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    "소셜 로그인을 통해 더 빠르게 가입하실 수 있습니다.",
                    style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                  ),
                ],
              ),
              Column(
                children: [
                  inputFile(label: "성함"),
                  inputFile(label: "이메일"),
                  inputFile(label:"비밀번호",obscureText: true),
                  inputFile(label:"비밀번호 확인",obscureText: true),
                ],
              ),
              MaterialButton(
                minWidth: double.infinity,
                height: 60,
                onPressed: () {},
                color: Colors.lightBlueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text(
                  "가입하기",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("이미 계정이 있으신가요?"),
                  TextButton(
                      onPressed: () {
                        Get.off(() => LoginPage(),
                            transition: Transition.cupertino);
                      },
                      child: Text(
                        "로그인",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
