import 'package:flutter/material.dart';
import '../models/button_object.dart';

class HoverButton extends StatefulWidget {
  ButtonObject buttonObject;

  HoverButton({super.key, required this.buttonObject});

  @override
  State<HoverButton> createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
  bool hoverValue = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              widget.buttonObject.text ?? "",
              style: TextStyle(
                color: (hoverValue) ? Colors.grey : Colors.red,
              ),
            ),
            Container(
              height: 2,
              width: 50,
              color: (hoverValue) ? Colors.grey : Colors.red,
            )
          ],
        ),
      ),
      onHover: (hover) {
        setState(() {
          hoverValue = hover;
        });
      },
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return widget.buttonObject.destination;
          }),
        );
      },
    );
  }
}
