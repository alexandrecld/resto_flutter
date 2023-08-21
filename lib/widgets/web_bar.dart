import 'package:flutter/material.dart';
import 'package:mon_restaurant/constantes.dart';
import 'package:mon_restaurant/widgets/branding.dart';

class WebBar extends PreferredSize {
  Size size;

  WebBar({super.key, required this.size})
      : super(
            preferredSize: Size(size.width, (size.height / 3)),
            child: Container(
              padding: const EdgeInsets.all(10),
              color: pinkColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Branding(),
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: menuButtonHover(),
                  ))
                ],
              ),
            ));
}
