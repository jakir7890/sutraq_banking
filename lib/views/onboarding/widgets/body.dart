import 'package:flutter/material.dart';
import 'package:squrart_app/const/constants.dart';
import 'package:squrart_app/responsive/size_config.dart';
import 'package:squrart_app/views/login_screen/login.dart';
import 'package:squrart_app/widgets/button.dart';
import './content.dart';

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({super.key});

  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentIndex = value;
                    });
                  },
                  itemCount: onboardinData.length,
                  itemBuilder: (context, index) {
                    return OnboardinContent(
                      image: onboardinData[index]['image'],
                    );
                  },
                )),
            Expanded(
                flex: 4,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          onboardinData.length, (index) => dotIndicator(index)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.kprimaryColor,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))),
                      child: SizedBox(
                        width: double.infinity,
                        child: Column(
                          children: [
                            Column(
                              children: List.generate(
                                  1, (index) => onboardingText(index)),
                            ),
                            Spacer(
                              flex: 2,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Button(
                                onpress: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => LoginScreen(),
                                      ));
                                },
                              ),
                            ),
                            divider,
                            Text('TRY SUTRAQ',
                                style: TextStyle(
                                    fontSize: getProportionateScrenWidth(18),
                                    color: AppColors.white,
                                    fontWeight: FontWeight.bold)),
                            Spacer(
                              flex: 2,
                            )
                          ],
                        ),
                      ),
                    ))
                  ],
                ))
          ],
        ),
      ),
    );
  }

  Widget onboardingText(int index) {
    index = currentIndex;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: getProportionateScreenHeight(40),
        ),
        Text(
          onboardinData[index]['title']!,
          style: TextStyle(
              fontSize: getProportionateScrenWidth(30),
              fontWeight: FontWeight.bold,
              color: AppColors.white),
        ),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            onboardinData[index]['subtitle']!,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: AppColors.white,
                fontSize: getProportionateScrenWidth(16)),
          ),
        ),
      ],
    );
  }

  AnimatedContainer dotIndicator(int index) {
    return AnimatedContainer(
        margin: EdgeInsets.all(5),
        height: 6,
        width: currentIndex == index ? 15 : 6,
        decoration: BoxDecoration(
            color: currentIndex == index
                ? AppColors.kprimaryColor
                : AppColors.kgrey,
            borderRadius: BorderRadius.circular(3)),
        duration: kAnimationDuration);
  }
}
