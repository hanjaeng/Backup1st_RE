import 'package:flutter/material.dart';
import 'package:listview_animal_app/view/insert_list.dart';
import 'package:listview_animal_app/view/table_list.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{

  // Property
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();    //controller를 종료하고 앱을 종료시켜야한다.
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: controller,
        children: const [
          TableList(),
          InsertList()
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.amberAccent,
        child: TabBar(
          controller: controller,
          labelColor: Colors.blue,
          indicatorColor: Colors.red,
          indicatorWeight: 5,
          tabs: const [
            Tab(
              icon: Icon(
                Icons.looks_one
              ),
              text: "One",
            ),
            Tab(
              icon: Icon(
                Icons.looks_two
              ),
              text: "Two",
            ),
          ],
          ),
      ),
    );
  }
}