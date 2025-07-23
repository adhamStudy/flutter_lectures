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
         body:
      //    Text('Hello from body , Hello from body, Hello from body, Hello from body, Hello from body ',
      // maxLines: 1,
      //      style: TextStyle(fontSize: 20,color: Colors.red),
      //      overflow: TextOverflow.fade,
      //
      //    ),
      //    Container(
      //      decoration: BoxDecoration(color: Colors.deepOrangeAccent,
      //      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),topRight: Radius.circular(20)),
      //
      //
      //
      //      ),
      //      margin: EdgeInsets.all(10),
      //      width: 220,
      //      height : 150,
      //      // color: Colors.deepOrangeAccent,
      //      child: Center(child: MyText('Body of the app'),),
      //    )
         Stack(children: [
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


           Positioned(
             top: 110,
             left: 180,
             child: Container(
               width:60,
               height: 60,
               child: Center(child: Text('30%',style: TextStyle(color: Colors.white,fontSize: 20),),),
               decoration: BoxDecoration(color: Colors.green,
                   border: Border.all(width: 5,color: Colors.white),

                   borderRadius: BorderRadius.circular(50)
               ),
             ),
           ),
         ],)
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


