import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  //property

  late String _lampImage;  //Image File Name
  late bool _lampState;
  late String _lampMessage;

  @override
  void initState() {
    super.initState();
    _lampImage = 'images/lamp_on.png';
    _lampState = true;
    _lampMessage = '켜진';
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert를 이용한 메세지 출력'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 330,
              height: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    _lampImage,
                    width: 250,
                    height: 400,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: (){
                    decisionON();
                  },
                  child: const Text('켜기')
                ),
                ElevatedButton(
                  onPressed: (){
                    decisionOff();
                  },
                  child: const Text('끄기'))
              ],
            ),
          ],
        ),
      ),
    );
  }

  //  --- Functions ---
  decisionON(){
    if(_lampState == true){
      _lampMessage = '켜진';
      showMessage(context);
    }else{
      _lampImage = 'images/lamp_on.png';
      _lampState = true;
    }
    setState(() {});
  }

  decisionOff(){
    if(_lampState == true){
      messageOff(context);
    }else{
      _lampMessage = '꺼진';
      showMessage(context);
    }
    setState(() {});
  }

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
          title: Text('경고'),        //showDialog의 상단 제목
          content: Text("현재 램프가 $_lampMessage 상태입니다."),   //showDialog 본문 내용
          actions: [                                                  //띄어쓰기 \n
            Column(         
              mainAxisAlignment: MainAxisAlignment.center,                                          //action 은 마지막에 생성하는 함수
              children: [
                TextButton(
                onPressed: (){
                Navigator.pop(context);                     //navigator.pop(context)는 화면 나가는 명령어       
                },
                child: const Text('네. 알겠습니다.'),
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
  messageOff(context){
    showDialog(
      context: context,
      barrierDismissible: false,          //종료 버튼을 눌러야 나갈수 있음
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero
          ),
          backgroundColor: Colors.white,
          title: Text('램프 끄기'),        //showDialog의 상단 제목
          content: Text("램프를 끄시겠습니까?"),   //showDialog 본문 내용
          actions: [                                                  //띄어쓰기 \n
            Column(         
              mainAxisAlignment: MainAxisAlignment.center,                                          //action 은 마지막에 생성하는 함수
              children: [
                TextButton(
                onPressed: (){
                  _lampImage = 'images/lamp_off.png';
                  _lampState = false;
                  Navigator.pop(context);                     //navigator.pop(context)는 화면 나가는 명령어       
                setState(() {});
                },
                child: const Text('네'),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.red,
                  shape: RoundedRectangleBorder(      //외각이 둥근곳을 각지게 하는 명령어
                    borderRadius: BorderRadius.zero
                  )
                ),
              ),
              TextButton(
                onPressed: (){
                  Navigator.pop(context);                     //navigator.pop(context)는 화면 나가는 명령어       
                },
                child: const Text('아니오'),
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
} //End