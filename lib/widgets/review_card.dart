import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mon_restaurant/constantes.dart';
import '../models/review.dart';

class ReviewCard extends StatefulWidget {
  final Review review;
  final Size cardSize;

  const ReviewCard({required this.review, required this.cardSize, super.key});

  @override
  State<ReviewCard> createState() => _ReviewCardState();
}

class _ReviewCardState extends State<ReviewCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (kDebugMode) {
          print("click sur ${widget.review.name}");
        }
      },
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: SizedBox(
        height: widget.cardSize.height,
        width: (isHover) ? widget.cardSize.width + 30 : widget.cardSize.width,
        child: Card(
          borderOnForeground: false,
          shadowColor: Colors.transparent,
          color: pinkColor,
          elevation: (isHover) ? 7 : 1,
          child: Column(
            children: [
              Text(widget.review.name),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    widget.review.image,
                    fit: BoxFit.cover,
                    width: widget.cardSize.width - 20,
                  ),
                ),
              ),
              Text(widget.review.comment)
            ],
          ),
        ),
      ),
    );
  }
}
