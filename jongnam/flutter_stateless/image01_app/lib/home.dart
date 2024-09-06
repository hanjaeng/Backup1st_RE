import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[200],
      appBar: AppBar(
        title: Text('Image 01'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        centerTitle: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Padding(
            padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
            child: CircleAvatar(
              backgroundImage: AssetImage(
                'images/pikachu-1.jpg',
              ),radius: 50,
            ),
          ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
              child: CircleAvatar(
              backgroundImage: AssetImage(
                'images/pikachu-2.jpg',
              ),radius: 50,
                        ),
            ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
            child: CircleAvatar(
              backgroundImage: AssetImage(
                'images/pikachu-3.jpg',
              ),radius: 50,
            ),
          ),
          ],
        ),
      )
    );
  }
}

