import 'package:flutter/material.dart';

import 'CategoryPages/gongsi.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({Key? key}) : super(key: key);

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  List<String> categoryName = ["공시", "수능", "대입", "자격증", "대학수업", "자기소개서"];
  int? _selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (int i = 0; i < categoryName.length; i++)
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ChoiceChip(
                    labelPadding: EdgeInsets.only(left:11.0, right : 11.0),
                    selectedColor: Colors.lightBlue[200],
                    pressElevation: 0,
                    label: Text("${categoryName[i]}",style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),),
                    selected: _selectedIndex == i,
                    onSelected: (newBool) {
                      setState(() {
                        _selectedIndex = i;
                        },
                      );
                    },
                  ),
                ),
            ],
          ),
        ),
        Screens(_selectedIndex),
      ],
    );
  }
}
Widget Screens(_selectedIndex){
  switch(_selectedIndex){
    case 0 :
      return GongSi();
      break;
    case 1:
      return Text("@");
      break;
    case 2:
      return Text("#");
      break;
    case 3:
      return Text("%");
      break;
    case 4:
      return Text("^");
      break;
    case 5:
      return Text("&");
      break;
    default :
      return GongSi();
  }
}