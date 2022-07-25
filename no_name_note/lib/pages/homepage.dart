import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              title: Text("NoNameNote"),
              floating: false,
              pinned: true,
              snap: false,
              expandedHeight: 100,
              flexibleSpace:FlexibleSpaceBar(
                centerTitle: true,
                title: Text("대한민국 1위 기록물 마켓"),
              ),
            ),
            SliverList(delegate: SliverChildListDelegate(
              [
                Text("hi"),
                ElevatedButton(onPressed: (){}, child: Text("button")),
              ]
            ))
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: new Row(
            children: [
              Icon(Icons.home),
              Icon(Icons.chat),
              Icon(Icons.account_circle),
            ],
          ),
        ),
      ),
    );
  }
}
