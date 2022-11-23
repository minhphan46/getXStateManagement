import 'package:flutter/material.dart';
import 'package:getxapp/my_cart.dart';
import 'package:get/get.dart';
import 'package:getxapp/total_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter GetX',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyCart(),
    );
  }
}
