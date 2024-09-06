import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Property
  late TextEditingController nameController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Single Textfield'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: '글자를 입력 하세요',  //타이핑을 해도 남아 있는 글자
                  //hintText: '글자를 입력 하세요',  //타이핑을 하면 사라지는 글자
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () => inputcheck(),
              child: const Text('출력'),
            ),
          ],
        ),
      ),
    );
  }

  //-------Funcionts------
  inputcheck(){
    if(nameController.text.trim().isEmpty){
      errorSnackBar();
    }else{
      showSnackBar();
    }
  }

  errorSnackBar(){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('글자를 입력 하세요'),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.red,
        ),
    );
  }
  showSnackBar(){
    String inputValue = nameController.text.trim();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('입력한 글자는 $inputValue 입니다.'),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.blue,
        ),
    );
  }

} //End니 
