import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 49, 178, 214),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'images/pikachu-1.jpg',
                ),
                radius: 50,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'images/pikachu-2.jpg',
                ),
                radius: 50,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'images/pikachu-3.jpg',
                ),
                radius: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
