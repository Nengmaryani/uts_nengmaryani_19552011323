import 'package:flutter/material.dart';
import 'package:uts_nengmaryani_19552011323/splashscreen.dart';

void main() {
  runApp(const MyApp());  
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of nengmaryani application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: SplashScreenPage(),
    );
  }
}
