import 'package:flutter/material.dart';
import 'package:todo_app/custom_button.dart';
import 'package:todo_app/custom_textfield.dart';
import 'package:todo_app/fake_server.dart';
import 'package:todo_app/login.dart';
import 'package:todo_app/my_shopping_homepage.dart';
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
      initialRoute: '/',
      routes: {
        '/signup': (context) => const Signup(),
        '/login': (context) => const Login(),
        '/home': (context) => MyHomePage(title: "Welcome"),
        '/myshoppinghomepage': (context) => MyShoppingHomePage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Splash(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController controller = TextEditingController();
  final _fromKey = GlobalKey<FormState>();
  //final List<String> names = <String>[];

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: Form(
          key: _fromKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    width: width,
                    height: 150,
                    color: Colors.red[500],
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "TODO App",
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    CustomTextfield(title: "Todo", contoller: this.controller),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomButton(
                    title: "submit",
                    onPressed: () {
                      if (_fromKey.currentState!.validate()) {
                        return addItemToList();
                      }
                    }),
              ),
              Container(
                color: Colors.white,
                child: Scaffold(
                  body: ListView.builder(
                      padding: const EdgeInsets.all(3),
                      itemCount: FakeServer.emails.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                            height: 50,
                            margin: EdgeInsets.all(2),
                            padding: EdgeInsets.all(3),
                            color: Colors.white,
                            child: Center(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.email,
                                      textDirection: TextDirection.rtl,
                                      color: Colors.grey[600],
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        '${FakeServer.emails[index]}',
                                        /*
                                        
                                        * */
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.edit,
                                          color: Colors.green,
                                        ))
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.delete,
                                          color: Colors.red[500],
                                        ))
                                  ],
                                ),
                              ],
                            )));
                      }),
                ),
                width: width / 1.2,
                height: height / 3,
              ),
            ],
          )),
    );
  }

  void addItemToList() {
    setState(() {
      if (!controller.text.isEmpty) {
        FakeServer.addItemToList(controller.text);
        controller.clear();
      }
    });
  }

  void removeItemToList(int index) {
    setState(() {
      if (FakeServer.emails[index] == index) {
        FakeServer.removeItemFromList(index);
        controller.clear();
      }
    });
  }

  /*void editItemToList(int index, String email) {
    setState(() {
      FakeServer.editItemFromList(index, email);
      controller.clear();
    });
  }*/

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
