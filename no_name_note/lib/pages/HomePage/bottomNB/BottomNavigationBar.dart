import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:no_name_note/pages/HomePage/bottomNB/Icons/account.dart';
import 'package:no_name_note/pages/HomePage/bottomNB/Icons/heart.dart';
import 'package:no_name_note/pages/HomePage/bottomNB/Icons/menu.dart';
import 'package:no_name_note/pages/HomePage/bottomNB/Icons/search.dart';

class BottomNB extends StatefulWidget {
  const BottomNB({Key? key}) : super(key: key);

  @override
  State<BottomNB> createState() => _BottomNBState();
}

class _BottomNBState extends State<BottomNB> {
  int _selectedIndex = 2;
  final List<Widget> _widgetOptions = <Widget>[
    MenuBar(),
    Search(),
    Heart(),
    Account(),
  ];
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      onTap: (index){
        setState(() {
          _selectedIndex = index;
          switch(index){
            case 0 :
              Get.offAll(()=>MenuBar(),transition: Transition.leftToRight);
              break;
            case 1 :
              Get.to(()=>Search());
              break;
            case 3 :
              Get.to(()=>Heart());
              break;
            case 4 :
              Get.to(()=>Account());
              break;
            default:
          }
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.menu),
          label:"Menu",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label:"Search",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label:"Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label:"Heart Svg파일로 대체 요망",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label:"Account",
        ),

      ],
    );
  }
}
