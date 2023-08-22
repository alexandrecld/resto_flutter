import 'package:flutter/material.dart';
import 'package:mon_restaurant/constantes.dart';

class ContainerTextImage extends StatelessWidget {
  const ContainerTextImage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height / 2,
      width: size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: Image.asset(homeImage).image, fit: BoxFit.cover)),
      child: const Center(
        child: Padding(
          padding: EdgeInsets.only(left: 50, right: 50),
          child: Text(
            "Des gâteaux pour les codeurs gourmands",
            style: TextStyle(
                color: Colors.red,
                fontSize: 30,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
