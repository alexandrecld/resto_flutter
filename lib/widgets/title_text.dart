import 'package:flutter/material.dart';

class TitleText extends Text {
  String label;
  double fSize;

  TitleText({super.key, required this.label, required this.fSize})
      : super(
          label,
          style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.w900,
            fontStyle: FontStyle.italic,
            fontSize: fSize,
          ),
        );
}
