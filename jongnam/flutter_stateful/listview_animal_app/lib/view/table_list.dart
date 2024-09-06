import 'package:flutter/material.dart';
import 'package:listview_animal_app/model/message.dart';
import 'package:listview_animal_app/model/todo_list.dart';

class TableList extends StatefulWidget {
  const TableList({super.key});

  @override
  State<TableList> createState() => _TableListState();
}

class _TableListState extends State<TableList> {
  //Property
  late List<TodoList> todoList;

  @override
  void initState() {
    super.initState();
    todoList = [];
    addData();
  }

  addData() {
    todoList.add(TodoList(imagePath: 'images/bee.png', workList: '벌', flyType: '이 동물은 날수 있습니다.', animalList: '파충류'));
    todoList.add(TodoList(imagePath: 'images/cat.png', workList: '고양이', flyType: '이 동물은 날수 없습니다.', animalList: '포유류'));
    todoList.add(TodoList(imagePath: 'images/cow.png', workList: '황소', flyType: '이 동물은 날수 없습니다.', animalList: '포유류'));
    todoList.add(TodoList(imagePath: 'images/dog.png', workList: '강아지', flyType: '이 동물은 날수 없습니다.', animalList: '포유류'));
    todoList.add(TodoList(imagePath: 'images/fox.png', workList: '여우', flyType: '이 동물은 날수 없습니다.', animalList: '포유류'));
    todoList.add(TodoList(imagePath: 'images/monkey.png', workList: '원숭이', flyType: '이 동물은 날수 없습니다.', animalList: '영장류'));
    todoList.add(TodoList(imagePath: 'images/pig.png', workList: '돼지', flyType: '이 동물은 날수 없습니다.', animalList: '포유류'));
    todoList.add(TodoList(imagePath: 'images/wolf.png', workList: '늑대', flyType: '이 동물은 날수 없습니다.', animalList: '포유류'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Test'),
      ),
      body: ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Message.imagePath = todoList[index].imagePath;
                Message.workList = todoList[index].workList;
                Message.flyType = todoList[index].flyType;
                Message.animalList = todoList[index].animalList;
                showMessage(context);
              },
              child: Card(
                color: Colors.white,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(todoList[index].imagePath, width: 100,),
                    ),
                    Text(
                      "   ${todoList[index].workList}",
                    ),
                  ],
                ),
              ),
            );
          }
      ),
    );
  }

  // --- Functions ---
  // rebuildData() {
  //   if (Message.action) {
  //     todoList.add(
  //         TodoList(imagePath: Message.imagePath, workList: Message.workList));
  //     Message.action = false;
  //     setState(() {});
  //   }
  // }

  //--- Functions ---
  showMessage(context){
    showDialog(
      context: context,
      barrierDismissible: false,          //종료 버튼을 눌러야 나갈수 있음
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero
          ),
          backgroundColor: Colors.white,
          title: Text(Message.workList),        //showDialog의 상단 제목
          content: Text("이 동물은 ${Message.animalList} 입니다.\n${Message.flyType}"),   //showDialog 본문 내용
          actions: [                                                  //띄어쓰기 \n
            Column(         
              mainAxisAlignment: MainAxisAlignment.end,                                          //action 은 마지막에 생성하는 함수
              children: [
                TextButton(
                onPressed: (){
                Navigator.pop(context);                     //navigator.pop(context)는 화면 나가는 명령어       
                },
                child: const Text('종료'),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.red,
                  shape: RoundedRectangleBorder(      //외각이 둥근곳을 각지게 하는 명령어
                    borderRadius: BorderRadius.zero
                  )
                ),
              ),
              ]
            )
          ],
        );
      },
    );
  }
}// End
