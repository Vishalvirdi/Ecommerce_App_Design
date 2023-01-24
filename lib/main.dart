import 'package:flutter/material.dart';
import 'package:intern_login_page/views/screens/account.dart';
import 'package:intern_login_page/views/screens/cartpage.dart';
import 'package:intern_login_page/views/screens/congratulation.dart';
import 'package:intern_login_page/views/screens/design.dart';
import 'package:intern_login_page/views/screens/home.dart';
import 'package:intern_login_page/views/screens/login.dart';
import 'package:intern_login_page/views/screens/login2.dart';
import 'package:intern_login_page/views/screens/login3.dart';
import 'package:intern_login_page/views/screens/login4.dart';
import 'package:intern_login_page/views/screens/payment.dart';
import 'package:intern_login_page/views/screens/productdetails.dart';
import 'package:intern_login_page/views/screens/products.dart';
import 'package:intern_login_page/views/screens/splash_screen.dart';
import 'package:intern_login_page/views/widgets/bottomnavigationbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Page',
      home: Congratulations(),
    );
  }
}
