
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  CartPage({super.key});
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
                  image: DecorationImage(image: AssetImage('assets/products/0.jpg',
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

            }, icon: Icon(
              Icons.favorite_border

              ,color: Colors.red,
            ),
            )
          ],
        ),
      )
    );
  }
}

