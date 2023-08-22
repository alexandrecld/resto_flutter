import 'package:flutter/material.dart';
import 'package:mon_restaurant/models/make_it_responsive.dart';
import 'package:mon_restaurant/widgets/title_text.dart';

import '../widgets/event_widget.dart';

class EventSection extends StatelessWidget {
  const EventSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ScreenSize screenSize = MakeItResponsive().getScreenSize(context);
    bool isSmall = (screenSize) == ScreenSize.small;
    Size cardSize = isSmall ? size / 2 : size / 4;

    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            children: [
              TitleText(
                label: "Évènement",
                fSize: 30,
              ),
              Expanded(child: Container()),
            ],
          ),
          Row(
            children: [
              Expanded(child: Container()),
            ],
          ),
          adaptedToSize(isSmall, cardSize),
        ],
      ),
    );
  }

  Widget adaptedToSize(bool small, Size size) {
    List<Widget> widgets =
        events.map((e) => EventWidget(size: size, event: e)).toList();
    return (small)
        ? Column(children: widgets)
        : Row(
            children: widgets,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          );
  }
}
