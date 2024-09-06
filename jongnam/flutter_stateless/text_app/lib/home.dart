import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: const Text('삼국지'),
      backgroundColor: const Color.fromARGB(255, 208, 36, 9),
      foregroundColor: Colors.white,
    ),
    body: const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('body1'),
          Text('body2'),
          Text('body3'),
          SizedBox(
            height: 50,
          ),
          Text('body4'),
          Text('body5'),
          Text('body6'),
        ],
      ),
      ),
    );
  }
}
