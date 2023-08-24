import 'package:flutter/material.dart';
import 'package:mon_restaurant/models/make_it_responsive.dart';
import 'package:mon_restaurant/widgets/drawer_small.dart';
import 'package:mon_restaurant/widgets/phone_bar.dart';
import 'package:mon_restaurant/widgets/web_bar.dart';

import '../sections/login_section.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    ScreenSize screenSize = MakeItResponsive().getScreenSize(context);

    return Scaffold(
      appBar: (screenSize == ScreenSize.small)  ? PhoneBar() : WebBar(size: size),
      drawer: const DrawerSmall(),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            LoginForm(),
          ],
        ),
      ),
    );
  }
}
