// Lecture 2 : Dart Basics
import 'package:flutter/material.dart';
void main() {
  print('test');
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
             height: double.infinity,
             color: Colors.blueGrey.shade100,
child:
               // Column(
               //   mainAxisAlignment: MainAxisAlignment.center,
               //   crossAxisAlignment: CrossAxisAlignment.start,
               //   children: [
               //     MyText('First'),
               //     MyText('First'),
               //     MyText('First'),
               //   ],
               // )
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText('First'),
          MyText('Second'),
          MyText('Third')
        ],
      )
             // ListView(
             //   scrollDirection: Axis.vertical,
             //
             //
             //   children: [
             //    ListTile(title: Text('first'),
             //    subtitle: Text('subtitle'),
             //    leading: Icon(Icons.favorite),
             //      trailing: Icon(Icons.delete,color: Colors.red,),
             //    ),
             //     ListTile(title: Text('first'),
             //       subtitle: Text('subtitle'),
             //       leading: IconButton(onPressed: (){
             //         print('hello from leading');
             //       }, icon: Icon(Icons.add)),
             //       trailing: Icon(Icons.delete,color: Colors.red,),
             //     ),
             //
             //
             //
             //
             //
             //   ],
             // ),
           )


         // Container(
         //   width: 250,
         //   child:
         //   Stack(
         //     children: [
         //       Container(
         //         decoration: BoxDecoration(
         //          gradient: LinearGradient(colors: [Colors.white,Colors.grey.shade300]),
         //           borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),topRight: Radius.circular(30)),
         //         ),
         //         margin: EdgeInsets.all(10),
         //         width: 220,
         //         height : 150,
         //         // color: Colors.deepOrangeAccent,
         //         child: Center(child: Text('Hello From container',style: TextStyle(fontSize: 20,color: Colors.black),),),
         //       ),
         //       Positioned(
         //           top: 10,
         //           left: 200,
         //           child: Container(
         //
         //             decoration: BoxDecoration(color: Colors.indigo,
         //                 borderRadius: BorderRadius.circular(25),
         //               border: Border.all(color: Colors.white,width: 4)
         //
         //             ),
         //             width: 50,height: 50,
         //           child: Center(child: Text('30%',style: TextStyle(color: Colors.white,fontSize: 16,
         //           ),
         //           ),
         //           )
         //           ),
         //
         //       )
         //     ],
         //   ),
         // )
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
      padding: EdgeInsets.all(4),
    child: Text(text,style: TextStyle(fontSize: 20),
    ),
    );
  }
}


