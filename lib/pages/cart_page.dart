import 'dart:ffi';

import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List <String> products = ['0.jpg','1.jpg','2.jpg','3.jpg','4.jpg','5.jpg'];

  List  favorites = [ false,false,false,false,false,false];

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
      body: Container(
        child: ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)

            ),
            height: 120,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                   image: DecorationImage(image: AssetImage('assets/products/${index}.jpg',
                   ),
                   )
                  ),
                ),
                SizedBox(width: 10,),
               Column(
                 children: [
                   SizedBox(height: 20,),
                   Text('Iphone16 ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                   Text('600\$')
                 ],
               ),
                Spacer(),
                IconButton(onPressed: () {
                  setState(() {
                    favorites[index] = !favorites[index];
                  });
                }, icon: Icon(

                 favorites[index] ? Icons.favorite : Icons.favorite_border

                  ,color: Colors.red,))
              ],
            ),
          );
        },),
      )
    );
  }
}

