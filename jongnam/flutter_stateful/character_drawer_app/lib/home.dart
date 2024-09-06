import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  //Property
  late TextEditingController strController;
  late int currentIndex;
  late List<String> veiwData;
  late String viewMaindata;

  @override
  void initState() {
    super.initState();
    strController = TextEditingController();
    currentIndex = 0;
    veiwData = strController.text.split('');
    viewMaindata = '';


    Timer.periodic(
      Duration(seconds: 1),
      (timer){
        pressButton();
      }
      );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LED 광고'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              child: Center(
                child: Text('광고 문구를 입력하세요',
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),),
              ),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                )
              ),
            ),
            TextField(
              controller: strController,
              decoration: InputDecoration(
                labelText: '글자를 입력하세요',
              ),
            ),
            ElevatedButton(
              onPressed: (){
                popDrawer();
              },
              child: const Text('광고문구 생성')
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(viewMaindata,
        style: TextStyle(
          fontSize: 50,
          fontWeight: FontWeight.bold
        ),),
      ),
    );
  }

  // --- Functions ---
  pressButton(){  
    if(veiwData.isNotEmpty){
      if(currentIndex >= strController.text.length){
        currentIndex = 0;
        viewMaindata = veiwData[currentIndex];
      }else{
      viewMaindata += veiwData[currentIndex];
    }
    currentIndex ++;
    setState(() {});
    }
  }

    popDrawer(){
      Navigator.pop(context);
      veiwData = strController.text.split('');

      viewMaindata = '';
      currentIndex = 0;
      setState(() {});
    }
} //end