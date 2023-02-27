import 'package:flutter/material.dart';
import 'package:squrart_app/responsive/size_config.dart';

class OnboardinContent extends StatelessWidget {
  const OnboardinContent({
    Key? key,
     this.image, this.title, this.subtitle,
  }) : super(key: key);
  final String? image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image!,
      height: getProportionateScreenHeight(300),
    );
  }
}
