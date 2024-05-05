import 'package:flutter/material.dart';
import 'package:machine_learning_project/home_leyout.dart';

void main() {
  runApp(
     MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Home_Leyout.routName,
      routes: {
        Home_Leyout.routName:(n)=>Home_Leyout(),
        //Setting.routName:(v)=>Setting(),
      },
    );
  }
}