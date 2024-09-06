import 'dart:ffi';

class AllCalc{
  //Property
  late String num1str;
  late String num2str;

  //Constructor
  AllCalc(String num1str, String num2str)
    : num1str  = num1str,
      num2str = num2str;

  //Function
  addAction(){
    int num1 = int.parse(num1str);
    int num2 = int.parse(num2str);
    int addResult = num1 + num2;
    return addResult;
  }
  subAction(){
    int num1 = int.parse(num1str);
    int num2 = int.parse(num2str);
    int subResult = num1 - num2;
    return subResult;
  }
  mulAction(){
    int num1 = int.parse(num1str);
    int num2 = int.parse(num2str);
    int mulResult = num1 * num2;
    return mulResult;
  }
  divAction(){
    double num1 = double.parse(num1str);
    double num2 = double.parse(num2str);
    double divResult = (num1 /num2);
    return divResult;
  }
}