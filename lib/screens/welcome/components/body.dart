import 'package:flutter/material.dart';

import 'package:signup_page_App/components/rounded_button.dart';
import 'package:signup_page_App/constants.dart';
import 'package:signup_page_App/screens/Login/login_screen.dart';
import 'package:signup_page_App/screens/welcome/components/background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // This size provide us total height and width of our screen
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'WELCOME TO EDU',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Image.asset(
              'assets/images/chat2.jpg',
              height: size.height * 0.45,
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            RoundedButton(
              text: 'LOGIN',
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return LoginScreen();
                  }),
                );
              },
            ),
            RoundedButton(
              text: 'SIGNUP',
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
