import 'package:flutter/material.dart';
import '../../../const/constants.dart';
import '../../../responsive/size_config.dart';


class slider_content extends StatelessWidget {
  const slider_content({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: getProportionateScreenHeight(120),
      width: getProportionateScrenWidth(260),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  logo,
                  height: getProportionateScreenHeight(20),
                ),
                Text(
                  'SUTRAQ CURRENCY',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Expanded(child: SizedBox()),
                Icon(Icons.visibility_outlined)
              ],
            ),
            divider,
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Available Balance',
                style: TextStyle(color: AppColors.kgrey),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Q190,000',
                  style: TextStyle(
                      color: AppColors.kprimaryColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.arrow_right_alt,
                  color: AppColors.kprimaryColor,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
