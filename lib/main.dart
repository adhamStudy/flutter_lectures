// Lecture 5 : List View + ListView Builder
import 'package:flutter/material.dart';
import 'package:flutter_lectures/pages/cart_page.dart';
import 'package:flutter_lectures/pages/home_page.dart';
void main() {
  print('test');
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
      return MaterialApp(
        debugShowCheckedModeBanner: false,
       home: CartPage()
      )
    ;
  }
}


