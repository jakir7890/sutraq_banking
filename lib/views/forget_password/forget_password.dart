import 'package:flutter/material.dart';
import 'package:squrart_app/const/constants.dart';
import 'package:squrart_app/responsive/size_config.dart';
import 'package:squrart_app/views/email_sent/email_sent_message.dart';
import 'package:squrart_app/widgets/button.dart';
import 'package:squrart_app/widgets/textfield.dart';

class ForgetPassword extends StatelessWidget {
  Map<String, String> forgetString = {
    'title': 'Forget Password?',
    'subtitle':
        'Enter the email adress associated with your account to recover password',
    'butonText': 'Recover Password'
  };

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: myAppbar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: getProportionateScreenHeight(25),
                ),
                Image.asset(
                  logo,
                  height: getProportionateScreenHeight(50),
                ),
                space = SizedBox(
                  height: getProportionateScreenHeight(50),
                ),
                Text(
                  forgetString['title']!,
                  style: TextStyle(
                      fontSize: getProportionateScrenWidth(32),
                      fontWeight: FontWeight.bold),
                ),
                divider,
                Text(
                  forgetString['subtitle']!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: getProportionateScrenWidth(16),
                    color: AppColors.kgrey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                space,
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Email Adress',
                    style: TextStyle(
                      fontSize: getProportionateScrenWidth(16),
                      color: AppColors.kgrey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                divider,
                MyTextField(
                    prefixIcon:
                        Icon(Icons.email, color: AppColors.kprimaryColor),
                    hintText: 'press@gmail.com'),
                divider = SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                Button(
                  buttonColor: AppColors.kprimaryColor,
                  buttonText: forgetString['butonText']!,
                  onpress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EmailSent(),
                        ));
                  },
                ),
                space,
              ],
            ),
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget myAppbar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: CircleAvatar(
            radius: 20,
            backgroundColor: AppColors.kprimaryColor,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: AppColors.white,
              ),
            )),
      ),
    );
  }
}
