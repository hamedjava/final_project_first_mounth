import 'package:flutter/material.dart';
import 'package:todo_app/login.dart';
import 'package:todo_app/signup.dart';

class MyRoutes {
  static const String login = '/login';
  static const String signup = '/signup';
  static const String myhome = '/home';

  static Map<String, Widget Function(BuildContext)> routes = {
    login: (context) => const Login(),
    signup: (context) => const Signup(),
  };
}
