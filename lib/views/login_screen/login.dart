import 'package:flutter/material.dart';
import 'package:squrart_app/responsive/size_config.dart';
import 'package:squrart_app/views/forget_password/forget_password.dart';
import 'package:squrart_app/views/tip_screen/tip_screen.dart';
import 'package:squrart_app/widgets/button.dart';
import 'package:squrart_app/widgets/textfield.dart';
import '../../const/constants.dart';

const List<String> logintext = [
  'Welcome Back!',
  'Enter your details to continue',
  'Email Adress',
  'press@gmial.com',
  'Password',
  '********',
  'Forgot Password?',
  'Need an Account?',
  'Tap to use fingerprint',
];

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: SafeArea(
        child: Scaffold(
          body: SizedBox(
            width: double.maxFinite,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScrenWidth(15)),
              child: LoginContent(),
            ),
          ),
        ),
      ),
    );
  }
}

class LoginContent extends StatelessWidget {
  const LoginContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20),
          Image.asset(
            logo,
            width: getProportionateScreenHeight(80),
          ),
          space,
          Text(
            logintext[0],
            style: TextStyle(
                fontSize: getProportionateScrenWidth(32),
                fontWeight: FontWeight.bold),
          ),
          Text(
            logintext[1],
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: getProportionateScrenWidth(16)),
          ),
          space,
          Align(
            alignment: Alignment.centerLeft,
            child: Text(logintext[2],
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: getProportionateScrenWidth(14))),
          ),
          divider,
          MyTextField(
            prefixIcon: Icon(Icons.email, color: AppColors.kprimaryColor),
            hintText: logintext[3],
          ),
          space = SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(logintext[4],
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: getProportionateScrenWidth(14))),
          ),
          divider,
          MyTextField(
            prefixIcon: Icon(Icons.lock, color: AppColors.kprimaryColor),
            suffixIcon: Icon(
              Icons.visibility,
              color: AppColors.kprimaryColor,
            ),
            hintText: logintext[5],
          ),
          divider,
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ForgetPassword(),
                    )),
                child: Text(logintext[6],
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: AppColors.kprimaryColor,
                        fontSize: getProportionateScrenWidth(14)))),
          ),
          space,
          Button(
            buttonColor: AppColors.kprimaryColor,
            onpress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TipScreen(),
                  ));
            },
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                  style: TextStyle(
                      color: AppColors.kgrey,
                      fontSize: getProportionateScrenWidth(15)),
                  children: <TextSpan>[
                    TextSpan(
                      text: logintext[7],
                    ),
                    TextSpan(
                        text: 'Try Su',
                        style: TextStyle(
                            color: AppColors.kprimaryColor,
                            fontWeight: FontWeight.bold)),
                    TextSpan(text: 'traq')
                  ],
                ),
              )
            ],
          ),
          Image.asset(
            fingerPrint,
            height: getProportionateScreenHeight(50),
          ),
          divider,
          Text(
            logintext[8],
            style: TextStyle(color: AppColors.kprimaryColor),
          ),
          space
        ],
      ),
    );
  }
}
