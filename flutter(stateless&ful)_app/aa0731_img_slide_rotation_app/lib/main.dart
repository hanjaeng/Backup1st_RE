import 'package:d0730_image_zoom_app/home_switchplus.dart';
import 'package:flutter/material.dart';

import 'home_slid.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home2(),  //Home회전 슬라이더,  Home2 색 확대 스위치
    );
  }
}
