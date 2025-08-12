import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int counter = 20;

  @override
  Widget build(BuildContext context) {
    print('hello from build');
    return Scaffold(
      appBar: AppBar(title: const Text('Second page')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
              setState(() {
                counter--;
              });
                print(counter);
              },
              child: const Text('Decrement -'),
            ),
            Text(counter.toString(), style: const TextStyle(fontSize: 24)),
            ElevatedButton(
              onPressed: () {
              setState(() {
                counter++;
              });
                print(counter);
              },
              child: const Text('Increment +'),
            ),
          ],
        ),
      ),
    );
  }
}
