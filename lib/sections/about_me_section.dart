import 'package:flutter/material.dart';

import '../constantes.dart';
import '../widgets/title_text.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.all(30),
      width: size.width,
      color: pinkColor,
      child: Column(
        children: [
          Row(
            children: [
              TitleText(label: "À propos de moi", fSize: 30),
              Expanded(child: Container()),
            ],
          ),
          Row(
            children: [
              Expanded(child: Container()),
              SizedBox(
                height: size.height / 6,
                width: size.width / 6,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(size.height / 6),
                  child: Image.asset(
                    athenaImage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          Text(
            aboutMe,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
    );
  }
}
