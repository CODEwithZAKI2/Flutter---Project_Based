// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables



import 'package:flutter/material.dart';
import 'package:project_based/pages/home.dart';
import 'package:project_based/pages/main_page.dart';
import 'package:project_based/styles/app_colors.dart';

import 'pages/login_page.dart';

void main() {
  runApp(
    MyApp()
  );
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Urbanist',
        scaffoldBackgroundColor: AppColors.bG
      ),
      
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/main': (context) => MainPage(),
      },
    );
  }
}