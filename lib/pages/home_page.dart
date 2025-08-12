import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
          title:
          Text('Lecture 5 ',
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
        ListView(

          children: [
            Container(
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
            ),
          ],
        )

    );
  }
}
