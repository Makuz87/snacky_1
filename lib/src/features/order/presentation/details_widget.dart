import 'package:flutter/material.dart';
import 'package:snacky_1/src/features/order/domain/details.dart';

class DetailsWidget extends StatelessWidget {
  final Details detailCard;

  const DetailsWidget({super.key, required this.detailCard});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Container(
        padding: EdgeInsets.all(20),
        width: 340,
        height: 310,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Colors.grey,
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
                Text(detailCard.ingredients),
                Text(detailCard.reviews)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(detailCard.ingredientsIcon),
                Row(
                  spacing: 15,
                  children: [
                    Icon(detailCard.stars),
                    Text(detailCard.rating),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
