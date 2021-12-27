import 'package:flutter/material.dart';
import 'package:myapp/detailsPage.dart';
import 'LoadingPage.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: LoadingPage(),
      //initialRoute: '/',
      routes: {
        '/':(context)=>LoadingPage(),
        '/detailsPage':(context)=>detailsPage(),
      },
    );
  }
}