import 'package:flutter/material.dart';

import '../../../constants/demoData.dart';


class ImagePage extends StatefulWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.81,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          PageView.builder(
            itemBuilder: (context, index) => Image.asset(
              DemoImages[index],
            ),
            onPageChanged: (value){
              setState(() {
                _currentPage = value;
              });
            },
            itemCount: DemoImages.length,
          ),
          Positioned(
            bottom: 25,
            right: 25,
            child: Row(
              children: List.generate(
                  DemoImages.length,
                      (index) => Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: IndicatorDot(isActive: index == _currentPage),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

class IndicatorDot extends StatelessWidget {
  const IndicatorDot({
    Key? key,
    required this.isActive,
  }) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isActive ? Colors.cyan : Colors.grey[400],
      width: 6,
      height: 3,
    );
  }
}
