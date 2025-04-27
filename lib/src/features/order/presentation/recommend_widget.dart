import 'package:flutter/material.dart';
import 'package:snacky_1/src/features/order/domain/recommendation.dart';

class RecommendWidget extends StatelessWidget {
  final Recommendation recommendation;

  const RecommendWidget({
    super.key,
    required this.recommendation,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              gradient: LinearGradient(
                  colors: [Color(0xFF908CF5), Color(0xFF8C5BEA)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Center(
                      child: Image(
                        image: AssetImage(
                          recommendation.imagePath,
                        ),
                        height: 130,
                      ),
                    ),
                  ),
                  Text(
                    recommendation.title,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    recommendation.description,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        recommendation.price,
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(width: 80),
                      Row(
                        children: [
                          // Todo: noch auslagern!
                          Icon(
                            Icons.favorite_border,
                            size: 12,
                          ),
                          Text(
                            recommendation.likes,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
