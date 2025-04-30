import 'dart:ui';

import 'package:flutter/material.dart';
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
              color: Colors.white.withOpacity(0.1),
            ),
          ),
          child: Column(
            children: [
              Text(
                detailCard.title,
                // "Mogli`s Cup",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Text(
                detailCard.description,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Text(
                detailCard.price,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Divider(
                color: Colors.white,
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    detailCard.ingredients,
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    detailCard.reviews,
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    detailCard.ingredientsIcon,
                    color: Colors.white,
                  ),
                  Row(
                    spacing: 15,
                    children: [
                      Icon(
                        detailCard.stars,
                        color: Colors.white,
                      ),
                      Text(
                        detailCard.rating,
                        style: TextStyle(color: Colors.white),
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
