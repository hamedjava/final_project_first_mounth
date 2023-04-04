import 'dart:async';

import 'package:flutter/material.dart';
import 'package:todo_app/routes/myroutes.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    navigate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset(
              "assets/images/splash3.jpg",
              width: 200,
              height: 200,
            ),
            Text(
              "Welcome To TODO App",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  Future navigate() async {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushNamed(context, MyRoutes.signup);
    });
  }
}
/*


* */
