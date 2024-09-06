import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_intro_app/second_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Navigation'),
            ElevatedButton(
              onPressed: () => Get.to(
                const SecondPage(),
                transition: Transition.fadeIn,
                duration: const Duration(seconds: 3),
              ),
              child: const Text('Get.to(): 화면 이동'),
            ),
            ElevatedButton(
                onPressed: () => Get.toNamed('/second'),
                child: const Text('Get.toNamed() : 화면 이동')),
            const Divider(
              thickness: 0.5,
              color: Colors.black,
            ),
            const Text('Snack Bar'),
            ElevatedButton(
                onPressed: () => buttonSnackbar(),
                child: const Text("Snackbar 보이기")
            ),
            const Divider(
              thickness: 0.5,
              color: Colors.black,
            ),
            Text('Dialog'),
            ElevatedButton(
              onPressed: () => buttonDialog(),
              child: const Text("다이어로그보이기")
            ),
            const Divider(
              thickness: 0.5,
              color: Colors.black,
            ),
            const Text("Bottom Sheet"),
            ElevatedButton(
              onPressed: () => buttonBottomSheet(),
              child: const Text('Bottom Sheet 보이기'),
            ),
            const Divider(
              thickness: 0.5,
              color: Colors.black,
            ),
            const Text('Navigation & Arguments'),
            ElevatedButton(
              onPressed: () => Get.to(
                const SecondPage(),
                arguments: 'First',),
              child: const Text('Get.to(): Single Argument')
            ),
            ElevatedButton(
              onPressed: () => Get.to(
                const SecondPage(),
                arguments: ["First", "Second"],
              ),
              child: const Text('Get.to() : Multiple Arguments')
              ),
              ElevatedButton(
                onPressed: () async{
                  var returnValue = await Get.to(const SecondPage());
                  Get.snackbar("Return Value", returnValue);
                },
                child: const Text("Get.to(): Return Argument"),
              ),
          ],
          
        ),
      ),
    );
  }

  // ---Functions---
  buttonSnackbar() {
    Get.snackbar("Snack Bar", "message",snackPosition: SnackPosition.BOTTOM,
    duration: const Duration(seconds: 2),
    backgroundColor: Colors.red,
    colorText: Colors.amber);
  }

  buttonDialog(){
    Get.defaultDialog(
      title: "Dialog", 
      middleText: "Message",
      backgroundColor: Colors.yellowAccent,
      barrierDismissible: false,
      actions: [
        TextButton(
          onPressed: () => Get.back(),
          child: const Text('Exit'),
        ),
      ]
    );
  }

  buttonBottomSheet(){
    Get.bottomSheet(
      Container(
        width: 500,
        height: 300,
        color: Colors.purple[200],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('text Line1'),
            Text('text Line2'),
            Text('text Line3'),
            TextButton(
              onPressed: () => Get.back(),
              child: const Text('Exit'),
            ),
          ],
        ),
      )
    );
  }
}
