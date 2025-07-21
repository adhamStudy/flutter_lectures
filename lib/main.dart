// Lecture 2 : Dart Basics
import 'package:flutter/material.dart';
void main() {

  runApp(MyApp());

}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
      return MaterialApp(

        debugShowCheckedModeBanner: false,
       home: Scaffold(
         appBar: AppBar(
           backgroundColor: Colors.redAccent.shade200,
           foregroundColor: Colors.white,
           title:
           Text('Lecture 3 ',
             style: TextStyle(fontSize: 24,color: Colors.white,fontStyle:FontStyle.italic),
           ),
           // centerTitle: true,
          actions: [
            IconButton(onPressed: () {
              print('Hi from button ');
            }, icon: Icon(Icons.add))
          ],
         ),
       ),

      );
  }
}


class MyText extends StatelessWidget {
   MyText(this.text);
   String text;

  @override
  Widget build(BuildContext context) {
    return    Padding(
      padding: EdgeInsets.all(10),
    child: Text(text,style: TextStyle(fontSize: 20),
    ),
    );
  }
}


