import 'package:flutter/material.dart';

class MakeItResponsive {
  double minPoint = 640;
  double maxPoint = 1000;

  ScreenSize getScreenSize(BuildContext context) {
    final size = MediaQuery.of(context).size;
    if (size.width > minPoint) {
      return ScreenSize.large;
    } else if (size.width < maxPoint) {
      return ScreenSize.small;
    } else {
      return ScreenSize.medium;
    }
  }

  double getRatio(BuildContext context) {
    ScreenSize screenSize = getScreenSize(context);
    switch (screenSize) {
      case ScreenSize.small:
        return 0.4;
      case ScreenSize.medium:
        return 0.25;
      case ScreenSize.large:
        return 0.2;
    }
  }

  List<List<Widget>> toArray(List<Widget> widgets, int maxItem) {
    List<List<Widget>> newList = [];
    int index = 0;

    for (int i = 0; i < widgets.length; i++) {
      newList.add([]);
    }

    for (int x = 0; x < widgets.length; x++) {
      if (index >= maxItem) {
        index = 0;
      }
      List<Widget> currentList = newList[index];
      currentList.add(widgets[x]);
      newList[index] = currentList;
      index++;
    }

    return newList;
  }

  Widget responsiveRows(List<Widget> widgets, ScreenSize screenSize) {
    int maxItem = 0;
    switch (screenSize) {
      case ScreenSize.small:
        maxItem = 2;
        break;
      case ScreenSize.medium:
        maxItem = 3;
        break;
      case ScreenSize.large:
        maxItem = 4;
        break;
    }

    List<List<Widget>> parsedList = toArray(widgets, maxItem);
    List<Column> columns = parsedList.map((e) => Column(children: e)).toList();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: columns,
    );
  }
}

enum ScreenSize {
  small,
  medium,
  large,
}
