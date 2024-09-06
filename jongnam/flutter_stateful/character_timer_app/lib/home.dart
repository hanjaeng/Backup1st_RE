import 'dart:async';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  //Property
  late String ledData;
  late int currentString;
  late List str;
  late String viewData;

  @override
  void initState() {
    super.initState();
    currentString = 0;
    ledData = '대한민국';
    str = ledData.split('');
    viewData  = str[currentString];

    Timer.periodic(
      const Duration(seconds: 2),
      (timer){
        ledAction();
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LED 광고'),
      ),
      body: Center(
        child: Text(viewData,
        style: const TextStyle(
        fontSize: 50,
        fontWeight: FontWeight.bold,
        ),
        ),
      ),
    );
  }

  // --- Function ---
  ledAction(){
    currentString ++;
    if(currentString >= str.length){
      currentString = 0;
      viewData = str[currentString];
    }else{
      viewData += str[currentString];
    }
    setState(() {});
  }

}  //End