import 'package:flutter/material.dart';
import 'package:textfield_switch_calc_ex_app/cm/allcalc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}
  class _HomeState extends State<Home> {
  //Property
  late TextEditingController num1Controller;
  late TextEditingController num2Controller;
  late TextEditingController calcAdd;
  late TextEditingController calcSubtraction;
  late TextEditingController calcMultiplication;
  late TextEditingController calcDivision;
  late bool addSwitch;
  late bool subSwitch;
  late bool mulSwitch;
  late bool divSwitch;

  @override
  void initState() {
    super.initState();
    num1Controller = TextEditingController();
    num2Controller = TextEditingController();
    calcAdd = TextEditingController();
    calcSubtraction = TextEditingController();
    calcMultiplication = TextEditingController();
    calcDivision = TextEditingController();
    addSwitch = true;
    subSwitch = true;
    mulSwitch = true;
    divSwitch = true;
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("간단한 계산기"),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: num1Controller,
              decoration: const InputDecoration(
                labelText: "첫번째 숫자를 입력하세요"
              ),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: num2Controller,
              decoration: const InputDecoration(
                labelText: "두번째 숫자를 입력하세요"
              ),
              keyboardType: TextInputType.number,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: (){
                    inputCheck();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero
                    )
                  ),
                  child: const Text("계산하기"),
                ),
                ElevatedButton(
                  onPressed: (){
                    delButton();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero
                    )
                  ),
                  child: const Text("지우기"),
                ),
              ],
            ),
            Row(
              children: [
            const Text('덧셈:'),
            Switch(
              value: addSwitch,
              onChanged: (value){
                addSwitch = value;
                switchState();
              },
            ),
            const Text('뺄셈:'),
            Switch(
              value: subSwitch,
              onChanged: (value){
                subSwitch = value;
                switchState();
              },
            ),
            const Text('곱셈:'),
            Switch(
              value: mulSwitch,
              onChanged: (value){
                mulSwitch = value;
                switchState();
              },
            ),
            const Text('나눗셈:'),
            Switch(
              value: divSwitch,
              onChanged: (value){
                divSwitch = value;
                switchState();
              },
            ),
              ],
            ),
            TextField(
              controller: calcAdd,
              decoration: const InputDecoration(
                labelText: "덧셈 결과"
              ),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: calcSubtraction,
              decoration: const InputDecoration(
                labelText: "뺄셈 결과"
              ),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: calcMultiplication,
              decoration: const InputDecoration(
                labelText: "곱셈 결과"
              ),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: calcDivision,
              decoration: const InputDecoration(
                labelText: "나눗셈 결과"
              ),
              keyboardType: TextInputType.number,
            ),
          ],
        ),
      ),
    );
  }

// --- Functions ---
  errorSnackBar(){
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('숫자를 입력하세요!'),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.red,
        ),
    );
  }

  inputCheck(){
    if( num1Controller.text.trim().isEmpty ||
        num2Controller.text.trim().isEmpty){
      errorSnackBar();
    }else{
      AllCalc addCalc = AllCalc(num1Controller.text.trim(), num2Controller.text.trim());
      calcAdd.text = addCalc.addAction().toString();
      calcSubtraction.text = addCalc.subAction().toString();
      calcMultiplication.text = addCalc.mulAction().toString();
      calcDivision.text = addCalc.divAction().toString();
    }
  }

  delButton(){
    num1Controller.text = '';
    num2Controller.text = '';
    calcAdd.text = '';
    calcSubtraction.text = '';
    calcMultiplication.text = '';
    calcDivision.text = '';
  }

  switchState(){
    AllCalc addCalc = AllCalc(num1Controller.text.trim(), num2Controller.text.trim());
    if(addSwitch == false){
      calcAdd.text= '';
    }else{
      calcAdd.text = addCalc.addAction().toString();
    }
    if(subSwitch == false){
      calcSubtraction.text = '';
    }else{
      calcSubtraction.text = addCalc.subAction().toString();
    }
    if(mulSwitch == false){
      calcMultiplication.text = '';
    }else{
      calcMultiplication.text = addCalc.mulAction().toString();
    }
    if(divSwitch == false){
      calcDivision.text = '';
    }else{
      calcDivision.text = addCalc.divAction().toString();
    }
    setState(() {});
  }
  
}  //End