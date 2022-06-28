import 'package:flutter/material.dart';
import 'package:hkarve/views/boarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '7Krave',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        Boarding.routeName:(buildcontext)=>Boarding(),
      },
      initialRoute: Boarding.routeName,
    );
  }
}

