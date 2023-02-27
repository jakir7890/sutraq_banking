import 'package:flutter/material.dart';
import '../../../const/constants.dart';
import '../../../responsive/size_config.dart';
import 'package:badges/badges.dart' as badges;

ListTile myAppbar() {
  return ListTile(
    leading: CircleAvatar(
      backgroundColor: AppColors.kpurple,
      child: Text('OP',
          style: TextStyle(
              fontSize: getProportionateScrenWidth(14),
              color: AppColors.white,
              fontWeight: FontWeight.bold)),
    ),
    title: Text('Hello, Ashik!',
        style: TextStyle(
            fontSize: getProportionateScrenWidth(18),
            color: AppColors.white,
            fontWeight: FontWeight.bold)),
    subtitle: Text(
      'ashik7890/',
      style: TextStyle(
        color: AppColors.white,
      ),
    ),
    trailing: badges.Badge(
      badgeStyle: badges.BadgeStyle(
        badgeColor: Colors.green,
        borderSide: BorderSide(color: AppColors.white, width: 1.5),
      ),
      // stackFit: StackFit.loose,
position: badges.BadgePosition.topEnd(top: 0, end: 3),
      child: Icon(
        size: getProportionateScreenHeight(30),
        Icons.notifications,
        color: AppColors.kgrey,
      ),
    ),
  );
}
