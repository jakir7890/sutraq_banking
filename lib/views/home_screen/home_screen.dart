import 'package:flutter/material.dart';
import 'package:squrart_app/responsive/size_config.dart';
import './componets/slider_content.dart';
import './componets/app_bar.dart';
import './componets/custome_tab_button.dart';
import './componets/bottom_nav.dart';
import '../../const/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.ksecondary,
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: MyBottomNav(),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            children: <Widget>[
              myAppbar(),
              divider,
              SizedBox(
                height: getProportionateScreenHeight(120),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    slider_content(),
                    slider_content(),
                    slider_content(),
                  ],
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    color: AppColors.kprimaryColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Column(
                  children: [
                    divider,
                    Container(
                      height: getProportionateScreenHeight(100),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CustomeTabButton(
                              press: () {
                                print('hello');
                              },
                              icon: Icon(Icons.wallet),
                              text: 'Fund Wallet'),
                          SizedBox(
                            width: getProportionateScrenWidth(30),
                          ),
                          CustomeTabButton(
                              press: () {
                                print('hello');
                              },
                              icon: Icon(Icons.send_to_mobile),
                              text: 'Send Money'),
                          SizedBox(
                            width: getProportionateScrenWidth(30),
                          ),
                          CustomeTabButton(
                              press: () {
                                print('hello');
                              },
                              icon: Icon(Icons.call_received_outlined),
                              text: 'Withdraw'),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                        child: SizedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Recent Transactions',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              vdivider,
                              ListTile(
                                leading: CircleAvatar(
                                  foregroundColor: AppColors.kprimaryColor,
                                  child: Icon(Icons.call_received_outlined),
                                  backgroundColor:
                                      Colors.green.withOpacity(0.3),
                                ),
                                title: Text(
                                  'Access Bank',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                subtitle: Text('28, jan 2022'),
                                trailing: Text(
                                  '\$ 2,400',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              vdivider,
                              ListTile(
                                leading: CircleAvatar(
                                  foregroundColor: AppColors.kprimaryColor,
                                  child: Icon(Icons.call_received_outlined),
                                  backgroundColor:
                                      Colors.green.withOpacity(0.3),
                                ),
                                title: Text(
                                  'Access Bank',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                subtitle: Text('28, jan 2022'),
                                trailing: Text(
                                  '\$ 2,400',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              vdivider,
                              ListTile(
                                leading: CircleAvatar(
                                  foregroundColor: AppColors.kprimaryColor,
                                  child: Icon(Icons.call_received_outlined),
                                  backgroundColor:
                                      Colors.green.withOpacity(0.3),
                                ),
                                title: Text(
                                  'Access Bank',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                subtitle: Text('28, jan 2022'),
                                trailing: Text(
                                  '\$ 2,400',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              vdivider,
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
