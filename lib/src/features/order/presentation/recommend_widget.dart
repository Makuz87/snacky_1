import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snacky_1/src/details_bottom_sheet.dart';
import 'package:snacky_1/src/features/order/domain/recommendation.dart';
import 'package:snacky_1/src/features/order/presentation/add_to_card_btn2.dart';
import 'package:snacky_1/src/features/order/presentation/details_widget.dart';

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
          // spacing: 10,
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
                          scale: 1.0,
                          child: Image.asset(
                            recommendation.imagePath,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 8,
                        right: 8,
                        child: IconButton(
                          icon: Icon(Icons.close),
                          onPressed: () => Navigator.of(context).pop(),
                          color: Colors.white,
                        ),
                      ),
                      // Container fürs BottomSheet
                      Container(
                        padding: EdgeInsets.all(28),
                        height: MediaQuery.of(context).size.height * 0.88,
                        // width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            // Detailcontainer im BottomSheet
                            DetailsWidget(detailCard: details),

                            SizedBox(height: 50),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  // width: double.infinity,
                                  child:
                                      CupertinoSlidingSegmentedControl<String>(
                                    backgroundColor:
                                        const Color.fromARGB(255, 69, 69, 69),
                                    thumbColor: const Color.fromARGB(
                                        255, 136, 136, 136),
                                    groupValue: "Large",
                                    onValueChanged: (String? value) {},
                                    children: {
                                      "Small": Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 8),
                                        child: Text(
                                          "Small",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white),
                                        ),
                                      ),
                                      "Medium": Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 8),
                                        child: Text(
                                          "Medium",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      "Large": Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 8),
                                        child: Text(
                                          "Large",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white),
                                        ),
                                      ),
                                    },
                                  ),
                                ),
                                // SegmentSizes(),
                                Row(
                                  spacing: 10,
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

                            AddToCardBtn2(
                              title: "Add to order for ₳8.99",
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
                padding: EdgeInsets.all(18),
                width: 200,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  // border: Border.all(color: Colors.red),
                  border: Border.all(
                    color: Color.alphaBlend(
                      Color.fromARGB(100, 200, 152, 240),
                      Color.fromARGB(150, 203, 192, 225),
                    ),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 99, 98, 106),
                      Color(0xFF8C5BEA)
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: SizedBox(
                        height: 150,
                        child: Image.asset(recommendation.imagePath),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      recommendation.title,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      recommendation.description,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          recommendation.price,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 80),
                        Row(
                          children: [
                            Icon(
                              Icons.favorite_border,
                              size: 12,
                              color: Colors.white,
                            ),
                            Text(
                              recommendation.likes,
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
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
      ],
    );
  }
}
