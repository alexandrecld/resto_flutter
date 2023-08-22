import 'package:flutter/material.dart';
import 'package:mon_restaurant/constantes.dart';
import 'package:mon_restaurant/models/button_object.dart';
import 'package:mon_restaurant/widgets/branding.dart';

class DrawerSmall extends StatelessWidget {
  const DrawerSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView.separated(
            itemBuilder: (context, index) {
              if (index == 0) {
                return const Center(
                  child: Branding(),
                );
              } else {
                ButtonObject buttonObject = menuButton[index - 1];
                return ListTile(
                  title: Text(buttonObject.text ?? ""),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return buttonObject.destination;
                      }),
                    );
                  },
                );
              }
            },
            separatorBuilder: (context, index) {
              return const Divider();
            },
            itemCount: menuButton.length + 1));
  }
}
