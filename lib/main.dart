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
           backgroundColor: Colors.indigo,
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
         body:

         Container(
           decoration: BoxDecoration(color: Colors.grey.shade300,
             borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),topRight: Radius.circular(20)),
           ),
           margin: EdgeInsets.all(10),
           width: 220,
           height : 150,
           // color: Colors.deepOrangeAccent,
           child: Center(child: MyText('Body of the app'),),
         ),
      ),
      )
    ;
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


