import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Exercise 02'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        centerTitle: false,
      )
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('유비'),
            Text('관우'),
            Text('장비'),
            SizedBox(
              height: 30,
            ),
            Text('조조'),
            Text('여포'),
            Text('동탁'),
          ],
        )
      ),
    );
  }
}