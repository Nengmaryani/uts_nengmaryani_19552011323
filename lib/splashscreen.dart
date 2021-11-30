import 'dart:async';

import 'package:flutter/material.dart';
import 'package:uts_nengmaryani_19552011323/dashboardpage.dart' as users;

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({ Key? key }) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {

  @override
  void initState() {
    
    super.initState();
    startLaunching();
  }
  @override
  void dispose() {
    
    super.dispose();
  }

  startLaunching() async {
    var duration = const Duration(seconds: 5);
    return new Timer(duration, () {
      Navigator.of(context)
      .pushReplacement(new MaterialPageRoute(builder: (_) {
        return new users.DashboardPage();
      }));
  });
  } 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: MediaQuery.of(context).size.height,
          ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           Container(
                child: Center(
                  child: Image.asset("assets/fujifilm.png", height: 90, width: 270,
                ),),),
               
                 Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        child: new Text("Made With Nengmar"),
                      ),
                      Container(
                        child: Icon(Icons.favorite, color: Colors.red),
                      ),
                      Container(
                        child: Icon(Icons.copyright, size: 12.0),
                      ),
                      Container(
                        child: Text("2021"),
                      )
                      
                    ],
                  )
          ],
        ),
          ],
        ),
      );
  }
}