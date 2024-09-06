import 'package:flutter/material.dart';
import 'package:simple_gesture_detector/simple_gesture_detector.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  //Property
  late List<String> imageName;
  late int currentIamge;

  @override
  void initState() {
    super.initState();
    imageName = [
      'flower_01.png',
      'flower_02.png',
      'flower_03.png',
      'flower_04.png',
      'flower_05.png',
      'flower_06.png',
    ];
    currentIamge = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Swiping'),
      ),
      body: SimpleGestureDetector(
        onVerticalSwipe: (direction) => _onVerticalSwipe(direction),
        onHorizontalSwipe: (direction) => _onHorizontalSwipe(direction),
        onDoubleTap: () => _onDoubleTap(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                imageName[currentIamge],
              ),
              Image.asset(
                'images/${imageName[currentIamge]}',
              ),
            ],
          ),
        ),
      ),
    );
  }

  // --- Functions ---
  _onVerticalSwipe(direction){
    if(direction == SwipeDirection.up){
      currentIamge += 1;
      if(currentIamge >= imageName.length){
        currentIamge = 0;
      }
    }else{
      currentIamge -= 1;
      if (currentIamge< 0){
        currentIamge = imageName.length -1;
      }
    }
    setState(() {});
  }
  _onHorizontalSwipe(direction){
    if(direction == SwipeDirection.left){
      currentIamge += 1;
      if(currentIamge >= imageName.length){
        currentIamge = 0;
      }
    }else{
      currentIamge -= 1;
      if (currentIamge< 0){
        currentIamge = imageName.length -1;
      }
    }
    setState(() {});
  }
  _onDoubleTap(){ 
    currentIamge += 1;
      if(currentIamge >= imageName.length){
        currentIamge = 0;
    }
  setState(() {});
  }
} //End