import 'package:flutter/material.dart';
import 'package:mon_restaurant/constantes.dart';
import 'package:mon_restaurant/widgets/title_text.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      color: pinkColor,
      width: size.width,
      padding: const EdgeInsets.all(30),
      child: Column(
        children: [
          Row(
            children: [
              TitleText(label: "Contact", fSize: 30),
              Expanded(child: Container()),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: social(),
              ),
              Column(
                children: [
                  const Text("Contactez-moi :"),
                  TextButton(
                      onPressed: () {},
                      child: const Text("Tel: 06 77 55 44 33")),
                  TextButton(
                      onPressed: () {},
                      child: const Text("Mail: mon_restaurant@cfa.fr")),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  List<Widget> social() {
    List<Widget> items = [const Text("Suivez nous sur les réseaux sociaux :")];
    items.addAll(getSocialButtons());
    return items;
  }
}
