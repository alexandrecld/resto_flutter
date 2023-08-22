import 'package:flutter/material.dart';
import 'package:mon_restaurant/models/make_it_responsive.dart';
import 'package:mon_restaurant/sections/top_stack.dart';
import 'package:mon_restaurant/widgets/phone_bar.dart';
import 'package:mon_restaurant/widgets/web_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    ScreenSize screenSize = MakeItResponsive().getScreenSize(context);

    return Scaffold(
      appBar: (screenSize == ScreenSize.small) ? PhoneBar() : WebBar(size: size),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            TopStack(),
          ],
        ),
      ),
    );
  }
}
