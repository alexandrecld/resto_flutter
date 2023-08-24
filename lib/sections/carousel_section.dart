import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mon_restaurant/widgets/title_text.dart';
import '../constantes.dart';
import '../models/carousel_image.dart';

class CarouselSection extends StatefulWidget {
  final int depIndex;

  const CarouselSection({required this.depIndex, super.key});

  @override
  State<CarouselSection> createState() => _CarouselSectionState();
}

class _CarouselSectionState extends State<CarouselSection> {
  final CarouselController btnCarousel = CarouselController();

  Widget card(CarouselImage image) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Image.asset(
            image.path,
            fit: BoxFit.cover,
          ).image,
        ),
      ),
      child: Center(
        child: Text(
          image.name,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    int index = widget.depIndex;

    final items = images.map((image) => card(image)).toList();

    // config du carousel
    CarouselOptions options = CarouselOptions(
      autoPlay: false,
      aspectRatio: 16 / 9,
      enlargeCenterPage: true,
      onPageChanged: (newIndex, reason) {
        setState(() {
          index = newIndex;
        });
      },
    );

    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 20),
              child: TitleText(
                label: "Le carousel de gourmandises",
                fSize: 30,
              ),
            ),
            Expanded(child: Container()),
          ],
        ),
        CarouselSlider(
          items: items,
          options: options,
          carouselController: btnCarousel,
        ),
        Padding(
          // controller de gestion du carousel
          padding: const EdgeInsets.all(20),
          child: Card(
            color: pinkColor,
            elevation: 5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ...Iterable<int>.generate(images.length).map(
                  (int pageIndex) => Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InkWell(
                        onTap: () {
                          btnCarousel.animateToPage(pageIndex);
                          if (kDebugMode) {
                            print("Carousel tap ${pageIndex.toString()}");
                          }
                        },
                        child: Text(images[pageIndex].name),
                      ),
                      Visibility(
                        maintainAnimation: true,
                        maintainSize: true,
                        maintainState: true,
                        visible: (index == pageIndex),
                        child: AnimatedOpacity(
                          opacity: 1,
                          duration: const Duration(milliseconds: 750),
                          child: Container(
                            width: 50,
                            height: 5,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(2.5),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
