import 'package:flutter/material.dart';

void main() {
  runApp(const MonResto());
}

class MonResto extends StatelessWidget {
  const MonResto({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mon site de cuisine",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.deepOrange
      ),
      home: const Column(
        children: [
          Text('mon premier text')
        ],
      ),
    );
  }
}
