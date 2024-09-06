import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //Property
  late String buttonState;
  late String appbarState;
  late String buttonString;
  late Color baseColor;
  late Color buttonColor;
  late String pikaChu;//Text의 OFF와 ON Toggle

  @override
  void initState() {
    super.initState();
    buttonState = 'OFF';
    appbarState = 'Flutter Life Cycle';
    buttonString = '버튼을 누르세요';
    baseColor = Colors.white;
    buttonColor = Colors.purple;
    pikaChu = "images/pikachu-1.jpg";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: baseColor,
      appBar: AppBar(
        title: Text(appbarState),
        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _onClick(),
              style: ElevatedButton.styleFrom(
                backgroundColor: buttonColor,
                foregroundColor: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero
                )
              ),
              child:  Text(buttonString),
            ),
            Text(
              "버튼 상태 : $buttonState"
            ),
            Image.asset(pikaChu),
          ],
        ),
      ),
    );
  }

// -- Funcions ---
_onClick(){
  if(buttonState ==  "OFF" ){
    buttonState = "ON";
    appbarState = "플러터라이프사이클";
    buttonString = "Button Press";
    baseColor= Colors.amber;
    buttonColor = Colors.teal;
    pikaChu = "images/pikachu-2.jpg";
  }else{
    buttonState ="OFF";
    appbarState = 'Flutter Life Cycle';
    buttonString = '버튼을 누르세요';
    baseColor = Colors.white;
    buttonColor = Colors.purple;
    pikaChu = "images/pikachu-1.jpg";

  }

  setState(() {});

}
} //end