import 'package:flutter/material.dart';
import 'package:mon_restaurant/models/make_it_responsive.dart';
import 'package:mon_restaurant/widgets/drawer_small.dart';
import 'package:mon_restaurant/widgets/phone_bar.dart';
import 'package:mon_restaurant/widgets/web_bar.dart';

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ScreenSize screenSize = MakeItResponsive().getScreenSize(context);

    return Scaffold(
      appBar:
          (screenSize == ScreenSize.small) ? PhoneBar() : WebBar(size: size),
      drawer: const DrawerSmall(),
      body: const Center(child: Text("Page suivante")),
    );
  }
}
