import 'package:flutter/material.dart';
import 'package:todo_app/custom_button.dart';
import 'package:todo_app/custom_textfield.dart';
import 'package:todo_app/fake_server.dart';
import 'package:todo_app/login.dart';
import 'package:todo_app/my_home_page.dart';
import 'package:todo_app/my_shopping_homepage.dart';
import 'package:todo_app/routes/myroutes.dart';
import 'package:todo_app/signup.dart';
import 'package:todo_app/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // initialRoute: '/',

      routes: MyRoutes.routes,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: "Welcome"),
    );
  }
}



/*
Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomTextfield(
                            title: 'TODO TITLE', contoller: controller),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomButton(
                          title: 'submit',
                          onPressed: () {
                            if (_fromKey.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Processing Data')),
                              );
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                )
* */
/*


*/
/*
ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                leading: const Icon(Icons.list),
                trailing: const Text(
                  "GFG",
                  style: TextStyle(color: Colors.green, fontSize: 15),
                ),
                title: Text("List item $index"));
          }),
*/
