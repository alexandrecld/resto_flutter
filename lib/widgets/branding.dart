import 'package:flutter/material.dart';
import 'package:mon_restaurant/constantes.dart';

class Branding extends StatelessWidget {
  const Branding({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(cupcakelogo, width: 40, height: 40),
        const Text(
          "La cuisine du CFA",
          style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.w900,
              fontSize: 30,
              fontStyle: FontStyle.italic),
        ),
      ],
    );
  }
}
