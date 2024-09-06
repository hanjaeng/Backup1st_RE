import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

  //Property
  var value = Get.arguments ?? "__";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
      appBar: AppBar(
        title: const Text("Second page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Get.back(),
              child: const Text('Exit'),
            ),
            Text("Single Argument : $value"),
            Text("Multiple Argumnets #1 : ${value[0]}"),
            Text("Multiple Argumnets #2 : ${value[1]}"),

            ElevatedButton(
              onPressed: () => Get.back(result: "Good"),
              child: const Text('Reply'),
              ),
          ],
        ),
      ),
    );
  }
}