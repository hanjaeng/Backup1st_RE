import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  //Property
  late String _imageName;
  late double _lampWidth;  //Image Width
  late double _lampHeight; //Image Height
  late bool _lampOnoff;  //switch 켜짐 상태 
  late bool _lampSizeStatus;  //lamp Size
  late bool _lampColor;  //lamp 색깔
  
  @override
  void initState() {
    super.initState();
    _imageName = 'images/lamp_on.png';
    _lampWidth = 300;
    _lampHeight = 600;
    _lampOnoff = true;
    _lampSizeStatus = true;
    _lampColor = false;

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image 확대 및 축소'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 330,
              height: 630,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    _imageName,
                    width: _lampWidth,
                    height: _lampHeight,
                  ),
                ],
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Text('전구 색깔'),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Text('전구 확대'),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Text('전구 스위치'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Switch(
                    value: _lampColor,
                    onChanged: (value){
                      _lampColor = value;
                      switchColor();
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Switch(
                    value: _lampSizeStatus,
                    onChanged: (value){
                      _lampSizeStatus = value;
                      switchSize();
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Switch(
                    value: _lampOnoff,
                    onChanged: (value){
                      _lampOnoff = value;
                      switchOnoff();
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // --- Functions ---
  switchSize(){
    if(_lampSizeStatus){
      _lampWidth = 300;
      _lampHeight = 600;
    }else{
      _lampWidth = 150;
      _lampHeight = 300;
    }
    setState(() {});
  }

  switchOnoff(){
    if(_lampOnoff){
      switchColor();
    }else{
      _imageName = 'images/lamp_off.png';
    }
    setState(() {});
  }
  switchColor(){
    // if(_lampColor){
      //색이미지
    // }else{
      // 일반 이미지
    // }
    if(_lampOnoff == false && _lampColor == true && _lampColor == false){
      _imageName = 'images/lamp_off.png';}
      if(_lampOnoff == true && _lampColor == true){
      _imageName = 'images/lamp_red.png';
      }else if(_lampOnoff == true && _lampColor == false){
      _imageName = 'images/lamp_on.png';
      }
    setState(() {});
  }
} //End
