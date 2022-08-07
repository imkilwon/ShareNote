import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:no_name_note/pages/HomePage/bottomNB/BottomNavigationBar.dart';
import 'package:no_name_note/pages/HomePage/bottomNB/Icons/heart.dart';
import 'package:no_name_note/pages/HomePage/bottomNB/Icons/search.dart';
import 'package:no_name_note/pages/HomePage/home.dart';

class MenuBar extends StatefulWidget {
  const MenuBar({Key? key}) : super(key: key);

  @override
  State<MenuBar> createState() => _MenuBarState();
}

class _MenuBarState extends State<MenuBar> {
  @override
  Widget build(BuildContext context) {
    double screenSizeW = MediaQuery.of(context).size.width;
    double screenSizeH = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("로그인 정보 표시"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          IconButton(
              onPressed: () {
                setState(() {
                  Get.offAll(() => HomePage(),
                      transition: Transition.rightToLeft);
                });
              },
              icon: Icon(Icons.backspace_sharp)),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                MenuTaps("공무원", HomePage()),
                MenuTaps("전문직", Search()),
              ],
            ),
            Row(
              children: [
                MenuTaps("자격증", HomePage()),
                MenuTaps("수능", Search()),
              ],
            ),
            Row(
              children: [
                MenuTaps("논술", HomePage()),
                MenuTaps("수시", HomePage()),
              ],
            ),
            Row(
              children: [
                MenuTaps("자소서", HomePage()),
                MenuTaps("단권화", HomePage()),
              ],
            ),
            Row(
              children: [
                MenuTaps("책 요약", HomePage()),
                MenuTaps("개인적 기록물", HomePage()),
              ],
            ),
            Row(
              children: [
                MenuTaps("기타", HomePage()),
                MenuTaps("책장", HomePage()),
              ],
            ),
            SizedBox(height: 40,),
            Row(
              children: [
                SizedBox(width:14),
                MenuBox("이용 방법", HomePage()),
                SizedBox(width: 7.5,),
                MenuBox("친구 초대", HomePage()),
                SizedBox(width: 7.5,),
                MenuBox("고객 센터", HomePage()),
                SizedBox(width:10),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0,right:10.0),
                  child: Material(
                    color: Colors.grey[100],
                    child: InkWell(
                      onTap: (){},
                      child: Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width/2 - 25,
                        height: 40,
                        child: Text("충전",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0,right:10.0),
                  child: Material(
                    color: Colors.grey[100],
                    child: InkWell(
                      onTap: (){
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width/2 - 25,
                        height: 40,
                        child: Text("출금",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//메뉴 내용
class MenuTaps extends StatelessWidget {
  String? MenuName = "";
  Widget? Pages;

  MenuTaps(this.MenuName, this.Pages);

  @override
  Widget build(BuildContext context) {
    double TapSize = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            Get.offAll(Pages);
          },
          child: Container(
            width: TapSize / 2 - 16.0,
            height: 30,
            child: Padding(
              padding: const EdgeInsets.only(left: 14.5),
              child: Text(
                "$MenuName",
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MenuBox extends StatelessWidget {
  String MenuName = "";
  Widget? Page;

  MenuBox(this.MenuName , this.Page);

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return Material(
      color: Colors.grey[100],
      child: InkWell(
        onTap: () {
          Get.offAll(Page);
        },
        child: Container(
          alignment: Alignment.center,
          width: size / 3 - 15,
          height: 50,
          child: Text(
            "${MenuName}",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
