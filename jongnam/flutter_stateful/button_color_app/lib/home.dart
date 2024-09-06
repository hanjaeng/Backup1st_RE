import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}


class _HomeState extends State<Home> {

  //Property

  late String buttonStr;
  late Color buttonColor;
  late bool switchValue;

  @override
  void initState() {
    super.initState();
    buttonStr = 'Hello';
    buttonColor = Colors.blue;
    switchValue = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change button color & text'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                onPressed: (){
                  clickButton();
                  setState(() {});
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: buttonColor,
                  foregroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero
                  )
                ),
                child: Text(buttonStr)
                ),
            ),
          ),
          Switch(
            value: switchValue,
            onChanged: (value){
              switchValue = value;
              checkScreen();
              setState(() { });
            })
        ],
      ),
    );
  }

  //----------
  clickButton(){
    if(buttonStr == 'Hello'){
      buttonStr = 'Flutter';
      buttonColor = Colors.red;
      switchValue = true;
    }else{
      buttonStr= 'Hello';
      buttonColor = Colors.blue;
      switchValue = false;
    }
  }

  checkScreen(){
    if(switchValue){
      buttonStr = 'Flutter';
      buttonColor = Colors.red;

    }else{
      buttonStr = 'Hello';
      buttonColor = Colors.blue;

    }
  }
// swichValue = swichValue ? false : true;
// buttonColor = swichValue ? Colors.red : Colors.blue;
  
}