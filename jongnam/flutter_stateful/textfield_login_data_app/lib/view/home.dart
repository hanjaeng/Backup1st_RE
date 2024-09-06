import 'package:flutter/material.dart';
import 'package:textfield_login_data_app/model/user.dart';
import 'package:textfield_login_data_app/view/login.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //Property
  late TextEditingController idController;
  late TextEditingController passwordController;
  late String idCheck;
  late String pwCheck;

  @override
  void initState() {
    super.initState();
    idController = TextEditingController();
    passwordController = TextEditingController();
    idCheck = 'root';
    pwCheck = 'qwer1234';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Log In"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'images/login.png',
                width: 200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: idController,
                decoration: InputDecoration(labelText: '사용자 ID 입력하세요'),
                keyboardType: TextInputType.text,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(labelText: '패스워드를 입력하세요'),
                obscureText: true,
                keyboardType: TextInputType.text,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  pressButton();
                },
                child: const Text('Log In'))
          ],
        ),
      ),
    );
  }

  // --- Function ---
  pressButton() {
    if (idController.text.trim().isEmpty ||
        passwordController.text.trim().isEmpty) {
      errorSnackBar('사용자ID와 암호를 입력하세요', Colors.red, 5);
    } else {
      if (idController.text.trim() == 'root' &&
          passwordController.text.trim() == 'qwer1234') {
        _showDialog();
      } else {
        errorSnackBar('사용자ID와 암호가 맞지 않습니다!', Colors.blue, 10);
      }
    }
  }

  errorSnackBar(message, backColor, delayTime) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: delayTime),
        backgroundColor: backColor
      ),
    );
  }

  _showDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: Text(
            '환영 합니다.!',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          content: Row(
            children: [
              Text('신분이 확인 되었습니다.'),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Login())),
              child: const Text('Ok'),
            ),
          ],
        );
      },
    );
  }
} //End