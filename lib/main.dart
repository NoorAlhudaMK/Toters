import 'package:flutter/material.dart';

import 'Data/data.dart';
import 'Screens/splash_screen.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const SplashScreen(),
        theme: ThemeData(
          tabBarTheme: TabBarTheme(
            labelStyle: TextStyle(
              color: primaryColor,
              fontSize: 18,
            ),
            unselectedLabelStyle: TextStyle(
              color: Colors.grey,
              fontSize: 18,
            ),
            unselectedLabelColor: primaryColor,
          ),
        ),
      ),
  );
}
