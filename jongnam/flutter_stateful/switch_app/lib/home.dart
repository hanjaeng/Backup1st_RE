import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  //Property
  late bool switchValue;
  late String appBarTitle;
  late String imageName;

  @override
  void initState() {
    super.initState();
    switchValue = true;
    appBarTitle = "Pikachu-2";
    imageName = "pikachu-2.jpg";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title:  Text(appBarTitle),
      ),
      body: Center
      (child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () => clickImage(),

            child: Image.asset('images/$imageName',
            width: 100
            ),
          ),
          Switch(
            value: switchValue,
            onChanged: (value){
              switchValue = value;
              checkScreen();
            }
          ),
        ],
      ),
      ),
    );
  }

//------그림 클릭function
  clickImage(){
    if(switchValue){
      switchValue = false;
      appBarTitle = 'Pikachu-3';
      imageName = 'pikachu-3.jpg';
    }else{
      switchValue = true;
      appBarTitle = 'Pikachu-2';
      imageName = 'pikachu-2.jpg';
    }

    setState(() {});
  }


  //-------
  checkScreen(){
    if(switchValue){
      appBarTitle = 'Pikachu-2';
      imageName = 'pikachu-2.jpg';
    }else{
      appBarTitle= 'Pikachu-3';
      imageName = 'pikachu-3.jpg';
    }

    setState(() {});
  }
}