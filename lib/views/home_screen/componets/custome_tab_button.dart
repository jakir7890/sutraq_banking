import 'package:flutter/material.dart';
import '../../../const/constants.dart';
import '../../../responsive/size_config.dart';

class CustomeTabButton extends StatelessWidget {
  CustomeTabButton({required this.icon, required this.text,required this.press});

  final Widget icon;
  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          autofocus: true,
          onTap: press,
          child: CircleAvatar(
            foregroundColor: AppColors.white,
            radius: 30,
            backgroundColor: AppColors.ksecondary,
            child: icon,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: getProportionateScrenWidth(16),
              fontWeight: FontWeight.bold,
              color: AppColors.white),
        )
      ],
    );
  }
}
