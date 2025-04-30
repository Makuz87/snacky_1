import 'package:flutter/material.dart';
import 'package:snacky_1/src/details_bottom_sheet.dart';
import 'package:snacky_1/src/features/order/domain/recommendation.dart';
import 'package:snacky_1/src/features/order/presentation/add_to_card_btn.dart';
import 'package:snacky_1/src/features/order/presentation/details_widget.dart';
import 'package:snacky_1/src/features/order/presentation/segment_sizes.dart';

class RecommendWidget extends StatelessWidget {
  final Recommendation recommendation;

  const RecommendWidget({
    super.key,
    required this.recommendation,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        // Bild im Hintergrund
        Row(
          children: [
            InkWell(
              onTap: () {
                final details = DetailsBottomSheet(recommendation);
                showModalBottomSheet(
                  shape:
                      RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                  backgroundColor: const Color.fromARGB(255, 34, 34, 34),
                  isScrollControlled: true,
                  context: context,
                  builder: (context) => Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        top: -100,
                        right: 0,
                        left: 0,
                        child: Transform.scale(
                          scale: 1.1,
                          child: Image.asset(
                            recommendation.imagePath,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(28),
                        height: MediaQuery.of(context).size.height * 0.88,
                        // width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            DetailsWidget(detailCard: details),
                            SizedBox(height: 50),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SegmentSizes(),
                                Row(
                                  children: [
                                    Icon(Icons.remove_circle_outline,
                                        color: Colors.white),
                                    Text(
                                      "1",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Icon(Icons.add_circle_outline,
                                        color: Colors.white),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 30),
                            AddToCardBtn(
                              title: "Add to order for €8.99",
                            ),
                            SizedBox(height: 30),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
              // TODO   RECOMMEND CONTAINER
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  gradient: LinearGradient(
                    colors: [Color(0xFF908CF5), Color(0xFF8C5BEA)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
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
                            image: AssetImage(recommendation.imagePath),
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
            ),
          ],
        ),
      ],
    );
  }
}
