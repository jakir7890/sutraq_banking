import 'package:flutter/material.dart';
import 'package:squrart_app/const/constants.dart';
import 'package:squrart_app/responsive/size_config.dart';
import 'package:squrart_app/widgets/button.dart';

class EmailSent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Color.fromRGBO(226, 226, 226, 1),
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Center(
          child: Container(
            height: getProportionateScreenHeight(500),
            width: getProportionateScrenWidth(320),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xFFFFFFFF)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                space,
                Image.asset('assets/icons/inbox.png'),
                space,
                Text(
                  'Check your Inbox!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: getProportionateScrenWidth(28),
                  ),
                ),
                divider,
                Text(
                  'An email has been sent to you\nClick the link to reset your\npassword',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.kgrey,
                    fontSize: getProportionateScrenWidth(14),
                  ),
                ),
                space,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Button(
                    buttonColor: AppColors.kprimaryColor,
                    buttonText: 'CHECK MAIL',
                    onpress: () {},
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
