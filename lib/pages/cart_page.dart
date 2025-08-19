
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<bool> isFav= [false,false,false,false,false,false];

  @override
  Widget build(BuildContext context) {
    print('hello from build');
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(

          backgroundColor: Colors.blueGrey,
          title: const Text('Cart page',style: TextStyle(color: Colors.white,
          ),
          ),
      ),
      body:
     ListView.builder(
       itemCount: 6,
       itemBuilder:
     (context, index) {
       return  Container(
         margin: EdgeInsets.all(5),
         height: 120,
         width: double.infinity,
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           color: Colors.white,

         ),
         child:
         Row(
           children: [

             Container(
               height: 110,
               width: 120,

               decoration: BoxDecoration(
                 // color: Colors.red,
                   borderRadius: BorderRadius.circular(10),
                   image: DecorationImage(
                       fit: BoxFit.cover,
                       image: AssetImage('assets/products/${index}.jpg'))
               ),
             ),
             SizedBox(width: 10,),
             Container(


               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text('Iphone 16 pro',style: TextStyle(fontSize: 20,),),
                   Text('800 \$',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.red),),
                 ],
               ),
             ),
             Spacer(),
             Container(
               margin: EdgeInsets.only(right: 10),
               child: IconButton(onPressed: () {

                setState(() {
                  isFav[index] = !isFav[index];
                });


               }, icon: Icon(

                isFav[index] ?Icons.favorite :Icons.favorite_border,


                 color: Colors.red,)),
             ),

           ],
         )
         ,
       );
     },
     )
    );
  }
}

