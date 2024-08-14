import 'dart:async';

import 'package:flutter/material.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('/home');
    },);
    return Scaffold(backgroundColor: Colors.black,
      body: Center(
        child: Container(
          height:700,
          width:400,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/news logo 2.png'
              ),
            ),
          ),
        ),
      ),
    );
  }
}
