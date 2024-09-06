class Bmi{

  late String num1str;
  late String num2str;

  //Constructor
  Bmi(String num1str, String num2str)
    : num1str  = num1str,
      num2str = num2str;

  //Function
  bmiResult(){
    double num1 = double.parse(num1str);
    double num2 = double.parse(num2str); 
    double bmiresult = num2*10000 / (num1*num1);
    return bmiresult;
  }
  
  bmiString(){
    String result2;
    if(bmiResult() < 18.5){
      result2 = '저체중';
    }
    else if(bmiResult() >=18.5 && bmiResult() < 23){
      result2 = '정상체중';
    }
    else if(bmiResult() >= 23 && bmiResult() < 25){
      result2 = '과체중';
    }
    else if(bmiResult()>= 25 && bmiResult() < 30){
      result2 = '비만';
    }
    else{
      result2 = '고도비만';
    }
  }

  resultall(){
    return (clickButton(),bmiString());
  }
}