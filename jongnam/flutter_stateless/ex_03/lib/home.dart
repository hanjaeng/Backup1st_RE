import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ex_03'),
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('유비'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Text('관우'),
            Padding(
              padding: const EdgeInsets.fromLTRB(100, 100, 100, 100),
              child: Text('조조'),
            ),
            Text('동탁'),
              ],
            ),
            Text('장비'),
          ],
          ),
          ),
    );
  }
}