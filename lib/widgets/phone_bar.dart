import 'package:flutter/material.dart';
import 'package:mon_restaurant/constantes.dart';
import 'package:mon_restaurant/widgets/branding.dart';

class PhoneBar extends AppBar {
  PhoneBar({super.key})
      : super(
          title: const Branding(),
          centerTitle: true,
          backgroundColor: pinkColor,
        );
}
