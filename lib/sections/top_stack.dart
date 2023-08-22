import 'package:flutter/material.dart';
import 'package:mon_restaurant/widgets/container_button.dart';
import 'package:mon_restaurant/widgets/container_text_image.dart';

class TopStack extends StatelessWidget {
  const TopStack({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        ContainerTextImage(),
        ContainerButton(),
      ],
    );
  }
}
