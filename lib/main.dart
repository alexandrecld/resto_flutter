import 'package:flutter/material.dart';
import 'package:mon_restaurant/pages/home_page.dart';

void main() {
  runApp(const MonResto());
}

class MonResto extends StatelessWidget {
  const MonResto({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: "Mon site de cuisine",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.deepOrange
      ),
      home: const HomePage(),
    );
  }
}


