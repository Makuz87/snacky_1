import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:snacky_1/src/features/order/domain/details.dart';

class DetailsWidget extends StatelessWidget {
  final Details detailCard;

  const DetailsWidget({super.key, required this.detailCard});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: Container(
          padding: EdgeInsets.all(24),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: const Color.fromARGB(255, 94, 94, 94).withOpacity(0.1),
            border: Border.all(
              color: const Color.fromARGB(255, 71, 71, 71).withOpacity(0.1),
            ),
          ),
          child: Column(
            children: [
//
              Text(
                detailCard.title,
                // "Mogli`s Cup",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),

              SizedBox(height: 10),
              //
              Text(
                textAlign: TextAlign.center,
                detailCard.description,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ),
//
              SizedBox(height: 25),
//

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "₳",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    detailCard.price,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w800),
                  ),
                ],
              ),
              //
              SizedBox(height: 20),
//
              Divider(
                color: Colors.white,
              ),
//
              SizedBox(height: 20),
//
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    detailCard.ingredients,
                    style: TextStyle(
                        color: const Color.fromARGB(255, 187, 187, 187),
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(width: 85),
                  Text(
                    detailCard.reviews,
                    style: TextStyle(
                      color: const Color.fromARGB(255, 187, 187, 187),
                    ),
                  )
                ],
              ),
              SizedBox(height: 8),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    spacing: 6,
                    children: [
                      Image.asset("assets/images/Gluten 1.png", height: 20),
                      Image.asset("assets/images/Sugar.png", height: 20),
                      Image.asset("assets/images/LowFat.png", height: 20),
                      Image.asset("assets/images/Kcal.png", height: 20),
                    ],
                  ),
                  Row(
                    spacing: 15,
                    children: [
                      Container(
                        child: RatingStars(
                          value: double.tryParse(detailCard.rating) ?? 0.0,
                          starSize: 16,
                          starCount: 5,
                          starSpacing: 4,
                          maxValue: 5,
                          maxValueVisibility: false,
                          valueLabelVisibility: false,
                          animationDuration: Duration(milliseconds: 800),
                          starColor: Colors.white,
                        ),
                      ),
                      Text(
                        detailCard.rating,
                        style: TextStyle(
                            color: const Color.fromARGB(255, 187, 187, 187),
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
