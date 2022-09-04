import 'package:flutter/material.dart';

import '../Data/data.dart';
import 'bottom_navigation_bar_screen.dart';
import 'food_details.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  Future Delay() async{
    await Future.delayed(Duration(seconds: 4));
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => BottomBar()));
  }

  @override
  void initState() {
    super.initState();
    Delay();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Image.asset("assets/images/toters_logo.png",
          width: MediaQuery.of(context).size.width * 0.6,
          height: MediaQuery.of(context).size.width * 0.6,
        ),
      ),
    );
  }
}
