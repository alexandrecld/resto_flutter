import 'package:flutter/material.dart';
import 'package:mon_restaurant/constantes.dart';
import 'package:mon_restaurant/models/make_it_responsive.dart';

class Branding extends StatelessWidget {
  const Branding({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize screenSize = MakeItResponsive().getScreenSize(context);
    String title =
        (screenSize == ScreenSize.small) ? "CFA Cook" : "La cuisine du CFA";

    return Row(
      children: [
        Image.asset(cupcakelogo, width: 40, height: 40),
        Text(
          title,
          style: const TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.w900,
              fontSize: 30,
              fontStyle: FontStyle.italic),
        ),
      ],
    );
  }
}
