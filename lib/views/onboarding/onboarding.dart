import 'package:squrart_app/responsive/size_config.dart';

import './widgets/body.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: OnboardingBody(),
    );
  }
}
