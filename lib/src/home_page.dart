import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:snacky_1/src/categorie_button_small.dart';
import 'package:snacky_1/src/features/order/domain/recommendation.dart';
import 'package:snacky_1/src/features/order/presentation/categorie_button_small_widget.dart';
import 'package:snacky_1/src/features/order/presentation/categrorie_button_widget.dart';
import 'package:snacky_1/src/features/order/presentation/offer_card_widget.dart';
import 'package:snacky_1/src/features/order/presentation/recommend_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/Home1.png"),
                    fit: BoxFit.cover),
              ),
              child: Container(
                padding: EdgeInsets.fromLTRB(12, 24, 0, 24),
                // width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 40),
                    Text(
                      "Choose Your Favorite \nSnack",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                      ),
                    ),

                    SizedBox(height: 5),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        child: Row(
                          spacing: 12,
                          children: [
                            CategrorieButtonWidget(),
                            Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Colors.white.withOpacity(0.6),
                                ),
                              ),
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Salty",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: -0.6),
                                ),
                              ),
                            ),
                            // CategorieButtonSmallWidget(categorie: Categorie1),
                            CategorieButtonSmallWidget(categorie: Categorie2),
                            CategorieButtonSmallWidget(categorie: Categorie3),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 40),

                    Center(
                      child: OfferCardWidget(
                        title: "Add to order",
                      ),
                    ),

                    SizedBox(height: 20),

                    Text(
                      "We Recommend",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w900),
                    ),

                    SizedBox(height: 10),

                    //  RECOMMEND
                    Container(
                      height: 290,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: recommendations.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 12, 0),
                            child: RecommendWidget(
                              recommendation: recommendations[index],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
