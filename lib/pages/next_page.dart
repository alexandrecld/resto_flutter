import 'package:flutter/material.dart';
import 'package:mon_restaurant/widgets/web_bar.dart';

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: WebBar(size: size),
      body: const Center(
        child: Text(
          "Page suivante",
          ),
        ),
      );
  }
}
