// Lecture 5 : List View + ListView Builder
import 'package:flutter/material.dart';
import 'package:flutter_lectures/pages/cart_page.dart';
void main() {
  print('test');
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
List <String> images = ['0.png','1.png','2.png','3.png','4.png'];
  @override
  Widget build(BuildContext context){
      return MaterialApp(


        debugShowCheckedModeBanner: false,
       home: CartPage()
      )
    ;
  }
}


