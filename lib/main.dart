import 'package:bimcalculator/screen/myhome.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MYHome(),
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black87,
        primaryColor: Colors.black
      ),
    );
  }
}
