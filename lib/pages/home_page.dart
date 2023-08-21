import 'package:flutter/material.dart';
import 'package:mon_restaurant/sections/top_stack.dart';
import 'package:mon_restaurant/widgets/web_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: WebBar(size: size),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            TopStack(),
          ],
        ),
      ),
    );
  }
}

/*
Center(
child: Text(
"Vive la cuisine",
textAlign: TextAlign.center,
style: TextStyle(
fontSize: 25,
fontWeight: FontWeight.w700,
),
),
),
*/
