import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,  //body에 색 입히기 Scaffold
      appBar: AppBar(
        title: Text("Image Padding"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
              child: Image.asset(
                'images/pikachu-1.jpg'
                ,width: 100,
                ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
              child: Image.asset(
                'images/pikachu-2.jpg'
                ,width: 100,
                ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
              child: Image.asset(
                'images/pikachu-3.jpg'
                ,width: 100,
                ),
            ),
                      Padding(
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
              child: Image.asset(
                'images/pikachu-1.jpg'
                ,width: 100,
                ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
              child: Image.asset(
                'images/pikachu-2.jpg'
                ,width: 100,
                ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
              child: Image.asset(
                'images/pikachu-3.jpg'
                ,width: 100,
                ),
            ),
            
            ]
          ),
        ),
      ),
    );
  }
}