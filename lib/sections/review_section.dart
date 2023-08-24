import 'package:flutter/material.dart';
import 'package:mon_restaurant/constantes.dart';
import 'package:mon_restaurant/models/make_it_responsive.dart';
import 'package:mon_restaurant/models/review.dart';
import 'package:mon_restaurant/widgets/review_card.dart';
import 'package:mon_restaurant/widgets/title_text.dart';

class ReviewSection extends StatefulWidget {
  const ReviewSection({super.key});

  @override
  State<ReviewSection> createState() => _ReviewSectionState();
}

class _ReviewSectionState extends State<ReviewSection> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ScreenSize screenSize = MakeItResponsive().getScreenSize(context);
    double ratio = MakeItResponsive().getRatio(context);
    Size cardSize = size * ratio;
    List<Review> reviews = [archi, moustache, flower, leche, gourmand, dog];
    List<ReviewCard> cards =
        reviews.map((r) => ReviewCard(review: r, cardSize: cardSize)).toList();

    return Container(
      width: size.width,
      padding: const EdgeInsets.all(30),
      child: Column(
        children: [
          Row(
            children: [
              TitleText(label: "ils ont aimés ...", fSize: 30),
              Expanded(child: Container())
            ],
          ),
          MakeItResponsive().responsiveRows(cards, screenSize),
        ],
      ),
    );
  }
}
