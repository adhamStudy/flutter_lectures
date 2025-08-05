// Lecture 5 : List View + ListView Builder
import 'package:flutter/material.dart';
import 'package:flutter_lectures/pages/home_page.dart';
import 'package:flutter_lectures/pages/second_page.dart';
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
       home: Home()
      )
    ;
  }
}


class Persons extends StatelessWidget {
  const Persons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      color:Colors.indigo.shade100,
      child:
      ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(10),
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.green,width: 3),
                color: Colors.white,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/${index}.png'))
            ),
          )
          ;
        },
        scrollDirection: Axis.horizontal,

      )
      ,
    );
  }
}
