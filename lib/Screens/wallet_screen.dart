import 'package:flutter/material.dart';

import '../Data/data.dart';
import 'account_screen.dart';
import 'home_screen.dart';
import 'orders_screen.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  int selected = 2;
  List<Widget> screens = [
    AccountPage(),
    OrdersPage(),
    WalletPage(),
    TotersHome(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset("assets/images/under_construction.png"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_outlined,
              ),
              label: 'الحساب'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.featured_play_list_outlined,
              ),
              label: 'الطلبات'),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.wallet,
            ),
            label: 'المحفظة',
            tooltip: 'الرئيسية',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'الرئيسية',
            tooltip: 'الرئيسية',
          ),
        ],
        selectedItemColor: primaryColor,
        unselectedItemColor: greyColor,
        selectedIconTheme: IconThemeData(size: 32),
        unselectedIconTheme: IconThemeData(size: 30),
        selectedLabelStyle: TextStyle(fontSize: 16, color: primaryColor),
        unselectedLabelStyle: TextStyle(fontSize: 14, color: primaryColor),
        currentIndex: selected,
        onTap: (index) {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => screens[index]));
        },
      ),
    );
  }
}
