import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:signup_page_App/components/already_have_an_account.dart';
import 'package:signup_page_App/components/rounded_button.dart';

import 'package:signup_page_App/components/rounded_input_field.dart';
import 'package:signup_page_App/components/rounded_password_field.dart';
import 'package:signup_page_App/screens/Login/components/background.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
    this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'LOGIN',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            SvgPicture.asset(
              'assets/icons/login.svg',
              height: size.height * 0.30,
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            RoundedInputField(
              hintText: 'Your Email',
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              hintText: 'Password',
              onChanged: (value) {},
            ),
            RoundedButton(
              text: 'LOGIN',
              press: () {},
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            AlreadyHaveAnAccountCheck(
              press: () {},
            )
          ],
        ),
      ),
    );
  }
}
