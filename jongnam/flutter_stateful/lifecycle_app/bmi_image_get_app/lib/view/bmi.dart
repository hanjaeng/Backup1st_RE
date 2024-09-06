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
    return result2;
  }

  bmiImages(){
    String resultimage;
    if(bmiString() == '저체중'){
      resultimage = 'images/bmi_0.jpg';
    }else if(bmiString() == '정상체중'){
      resultimage = 'images/bmi_1.jpeg';
    }else if(bmiString() == '과체중'){
      resultimage = 'images/bmi_2.jpeg';
    }else if(bmiString() == '비만'){
      resultimage = 'images/bmi_4.jpeg';
    }else{
      resultimage = 'images/bmi_5.jpeg';
    }
    return resultimage;
  }

  bmiPosition(){
    String resultIcon;
    if(bmiString() == '저체중'){
      resultIcon = '0'; 
    }else if(bmiString() == '정상체중'){
      resultIcon = '1';
    }else if(bmiString() == '과체중'){
      resultIcon = '2';
    }else if(bmiString() == '비만'){
      resultIcon = '3';
    }else{
      resultIcon = '4';
    }
    return resultIcon;
  }

  resultall(){
    return (bmiResult(), bmiString(),  bmiImages(), bmiPosition());
  }

}