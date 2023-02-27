import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:squrart_app/const/constants.dart';
import 'package:squrart_app/responsive/size_config.dart';
import 'package:squrart_app/route/route.dart';
import 'package:squrart_app/widgets/button.dart';

class TipScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/tip_bg.png'),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(),
                ),
                Button(
                  buttonColor: AppColors.kprimaryColor,
                  buttonText: 'Got It!',
                  onpress: () => Get.toNamed(home)!,
                ),
                space = SizedBox(
                  height: getProportionateScreenHeight(80),
                )
              ],
            ),
          )),
    );
  }
}
