import 'package:flutter/material.dart';
import 'package:listview_todo_ex_app/model/message.dart';
import 'package:listview_todo_ex_app/model/todo_list.dart';

class InsertList extends StatefulWidget {
  const InsertList({super.key});

  @override
  State<InsertList> createState() => _InsertListState();
}

class _InsertListState extends State<InsertList> {
  //Property
  late TextEditingController textEditingController;
  late bool purchaseSwitch;
  late bool promiseSwitch;
  late bool studySwitch;
  late String addImage;
  late bool switchValue;

  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController();
    purchaseSwitch = true;
    promiseSwitch = false;
    studySwitch = false;
    addImage = 'images/cart.png';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add View'),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('구매'),
                Switch(
                    value: purchaseSwitch,
                    onChanged: (value) {
                      purchaseSwitch = value;
                      switchState();
                    }),
                Image.asset("images/cart.png")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('약속'),
                Switch(
                    value: promiseSwitch,
                    onChanged: (value) {
                      promiseSwitch = value;
                      switchState();
                    }),
                Image.asset("images/clock.png")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('스터디'),
                Switch(
                    value: studySwitch,
                    onChanged: (value) {
                      studySwitch = value;
                      switchState();
                    }),
                Image.asset("images/pencil.png")
              ],
            ),
            TextField(
              controller: textEditingController,
              decoration: InputDecoration(labelText: '목록을 입력하세요'),
            ),
            ElevatedButton(
                onPressed: () {
                  if (textEditingController.toString().isNotEmpty) {
                    addList();
                  }
                  Navigator.pop(context);
                },
                child: const Text('OK')),
          ],
        ),
      ),
    );
  }

  // --- Functions ---
  switchState(){
    if(promiseSwitch == true){
      purchaseSwitch= false;
      studySwitch = false;
      addImage = 'images/clock.png';
    }
    if(studySwitch == true){
      purchaseSwitch = false;
      promiseSwitch = false;
      addImage = 'images/pencil.png';
    }
    if (purchaseSwitch == true){
      studySwitch = false;
      promiseSwitch = false;
      addImage = 'images/cart.png';
    }
    setState(() {});
  }

  addList() {
    Message.imagePath = addImage;
    Message.workList = textEditingController.text.trim();
    Message.action = true;
  }
}
