import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  //Property
  late TextEditingController num1Controller;
  late TextEditingController num2Controller;
  late double result1;
  late String result2;
  late String imagesresult;
  late List<double> iconPosition;
  late String currentBmi;

  @override
  void initState() {
    super.initState();
    num1Controller = TextEditingController();
    num2Controller = TextEditingController();
    result1 = 0;
    result2 = '';
    imagesresult = 'images/bmi_6.jpeg';
    iconPosition = [
      45,
      110,
      170,
      230,
      295,
    ];
    currentBmi = '0';
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI 계산기'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
            TextField(
              controller: num1Controller,
              decoration: const InputDecoration(
                labelText: "신장을 입력하세요 (단위:cm)",
              ),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: num2Controller,
              decoration: const InputDecoration(
                labelText: "몸무게를 입력하세요 (단위:kg)",
              ),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: () => buttonSnackbar(),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              ),
              child: const Text('BMI 계산'),
            ),
            Text("귀하의 BMI는 $result1 이고 $result2 입니다."),
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 10,
                    )
                  ),
                  child: Image.asset('images/bmi_6.jpeg'),
                ),
                Positioned(
                  left: iconPosition[int.parse(currentBmi)],
                  child: Container(
                    child: Icon(Icons.arrow_downward,
                      size: 50,), 
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }

  // --- Function ---
  // clickButton(){
  //   Bmi all = Bmi(num1Controller.text, num2Controller.text);
  //   if( num1Controller.text.trim().isEmpty ||
  //       num2Controller.text.trim().isEmpty){
  //       errorSnackBar();
  //   }else{
  //     (double, String, String, String) result = all.resultall();
  //     result1 = result.$1;
  //     result2 = result.$2;
  //     imagesresult = result.$3;
  //     currentBmi = result.$4;
  //   }
  //   setState(() {});
  // }

  errorSnackBar(){
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('숫자를 입력하세요!'),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.red,
        ),
    );
  }

  buttonSnackbar() {
    Get.snackbar('BMI 계산', "귀하의 BMI는 $result1 이고 $result2 입니다.",snackPosition: SnackPosition.TOP,
    duration: const Duration(seconds: 2),
    backgroundColor: Colors.red,
    colorText: Colors.amber);
  }

} //End