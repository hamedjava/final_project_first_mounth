import 'package:flutter/material.dart';

class MyShoppingHomePage extends StatefulWidget {
  const MyShoppingHomePage({Key? key}) : super(key: key);

  @override
  State<MyShoppingHomePage> createState() => _MyShoppingHomePageState();
}

class _MyShoppingHomePageState extends State<MyShoppingHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  MaterialBanner(
                    backgroundColor: Colors.amber,
                    actions: [
                      Text(
                        "Welcome",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                    content: Text(""),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
