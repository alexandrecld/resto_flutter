import 'package:flutter/material.dart';
import 'package:mon_restaurant/constantes.dart';
import 'package:mon_restaurant/models/make_it_responsive.dart';

class ContainerButton extends StatelessWidget {
  const ContainerButton({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize screenSize = MakeItResponsive().getScreenSize(context);
    Size size = MediaQuery.of(context).size;

    return Center(
      child: Padding(
        padding: EdgeInsets.only(
          top: (size.height / 2) - ((screenSize == ScreenSize.small) ? 30 : 20),
          left: size.width / 5,
          right: size.width / 5,
        ),
        child: (screenSize == ScreenSize.small) ? small(context) : big(),
      ),
    );
  }

  Widget small(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: getFloatingButton(context),
    );
  }

  Widget big() {
    return SizedBox(
      height: 40,
      child: Card(
        elevation: 5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: getCardHoverButtons(),
        ),
      ),
    );
  }
}
