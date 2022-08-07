import 'package:flutter/material.dart';
import 'package:no_name_note/pages/HomePage/FirstPage/FirstPage.dart';
import 'package:no_name_note/pages/HomePage/bottomNB/BottomNavigationBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
      length: 6,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("No Name Note", style: TextStyle(fontSize: 30)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_bag)),
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
        ],
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          indicatorSize: TabBarIndicatorSize.label,
          labelColor: Colors.lightBlue,
          labelStyle: TextStyle(
            fontSize: 16,
          ),
          unselectedLabelColor: Colors.grey[500],
          tabs: [
            Text("홈"),
            Text("인기"),
            Text("랭킹"),
            Text("신상"),
            Text("기획전"),
            Text("이벤트"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          FirstPage(),
          Center(
            child: Text("ㅁㅇㄴㄹ"),
          ),
          Center(
            child: Text("ㅁㅇㄴㄹ"),
          ),
          Center(
            child: Text("ㅁㅇㄴㄹ"),
          ),
          Center(
            child: Text("ㅁㅇㄴㄹ"),
          ),
          Center(
            child: Text("ㅁㅇㄴㄹ"),
          ),
        ],
      ),
      bottomNavigationBar: BottomNB(),
    );
  }
}
