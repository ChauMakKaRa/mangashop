import 'package:flutter/material.dart';
// import 'package:shopmanga/config/connect.dart';
import './views/acountUser/login.dart';

void main() async {
  // fetchData();
  runApp(const MyShoppingApp());
}

class MyShoppingApp extends StatelessWidget {
  const MyShoppingApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
    );
  }
}
