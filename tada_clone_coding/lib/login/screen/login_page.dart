import 'package:flutter/material.dart';
import 'package:tada_clone_coding/login/button/social_login_button.dart';
import 'package:tada_clone_coding/login/screen/text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WRTN.',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.deepOrange,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '  제일 쉬운 AI를 \n 무료로 즐기세요',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'bold',
                fontSize: 30,
              ),
            ),
            Padding(padding: EdgeInsets.all(5)),
            Text(
              '뤼튼의 AI는 사용할 수록 똑똑해져요',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'bold',
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Socialloginbutton(
              iconimage: Image.asset('assets/images/login/kakao_login.png'),
              text: '카카오 계정으로 1초만에 시작하기',
              backgroundcolor: Color(0xFFFFEB3B),
              textcolor: Colors.black,
            ),
            Padding(padding: EdgeInsets.all(10)),
            Socialloginbutton(
              iconimage: Image.asset('assets/images/login/google_login.png'),
              text: '구글 계정으로 시작하기',
              backgroundcolor: Color(0xFFF2F2F2),
              textcolor: Colors.black,
            ),
            Padding(padding: EdgeInsets.all(10)),
            Socialloginbutton(
              iconimage: Image.asset('assets/images/login/naver_login.png'),
              text: '네이버 계정으로 시작하기',
              backgroundcolor: Color(0xFF02c75b),
              textcolor: Colors.white,
            ),
            Padding(padding: EdgeInsets.all(10)),
            Socialloginbutton(
              iconimage: Image.asset('assets/images/login/apple_login.png'),
              text: '애플 계정으로 시작하기',
              backgroundcolor: Colors.white,
              textcolor: Colors.black,
            ),
            Padding(padding: EdgeInsets.all(10)),
            Text(
              '------------------------------ 또는 ------------------------------',
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
            Textfield(text: '아이디', textinfield: '아이디를 입력해주세요'),
            Padding(padding: EdgeInsets.all(10)),
            Textfield(text: '비밀번호', textinfield: '비밀번호를 입력해주세요'),
          ],
        ),
      ),
    );
  }
}
