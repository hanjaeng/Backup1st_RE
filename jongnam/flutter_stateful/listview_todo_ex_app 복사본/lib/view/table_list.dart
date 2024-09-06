import 'package:flutter/material.dart';
import 'package:listview_todo_ex_app/model/message.dart';
import 'package:listview_todo_ex_app/model/todo_list.dart';
import 'package:listview_todo_ex_app/view/detail_list.dart';

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

  addData(){
    todoList.add(TodoList(imagePath: 'images/cart.png', workList: '책구매'));
    todoList.add(TodoList(imagePath: 'images/clock.png', workList: '철수와 약속'));
    todoList.add(TodoList(imagePath: 'images/pencil.png', workList: '스터디 준비하기'));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main View'),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.pushNamed(context, '/insert').then((value) => rebuildData()); 
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Center(
        child: ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (contex, index){
            return Dismissible(
              direction: DismissDirection.endToStart,
              background: Container(
                color: Colors.red,
                alignment: Alignment.centerRight,
                child: const Icon(
                  Icons.delete_forever,
                  size: 50,
                ),
              ),
              key: ValueKey(todoList[index]),
              child: GestureDetector(
                onTap: () {
                  Message.imagePath = todoList[index].imagePath;
                  Message.workList = todoList[index].workList;
                  Navigator.push(
                    contex,
                    MaterialPageRoute(
                      builder: (contex)=> const DetailList())
                  );
                },
                child: Card(
                  child: Row(
                    children: [
                      Image.asset(todoList[index].imagePath,),
                      Text('   ${todoList[index].workList}'),
                    ],
                  ),
                ),
              ),
            );
          } 
        ),
      ),
    );
  }
    // Functions ---
    rebuildData(){
      if (Message.action) {
      todoList.add(
        TodoList(imagePath: Message.imagePath, workList: Message.workList));
        Message.action = false;
    }
      setState(() {});
    }
}