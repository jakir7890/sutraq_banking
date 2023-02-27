import 'package:flutter/material.dart';
import 'package:squrart_app/const/constants.dart';

class MyBottomNav extends StatelessWidget {
  const MyBottomNav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        selectedItemColor: AppColors.kprimaryColor,
        unselectedItemColor: AppColors.kgrey,
        
        unselectedFontSize: 14,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard), label: 'Dashboard'),
          BottomNavigationBarItem(icon: Icon(Icons.wallet), label: 'Wallet'),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: 'Card'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
          
        ]);
  }
}
