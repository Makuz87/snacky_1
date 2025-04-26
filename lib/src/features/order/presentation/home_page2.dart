import 'package:flutter/material.dart';
import 'package:snacky_1/src/features/order/domain/recommendation.dart';
import 'package:snacky_1/src/features/order/presentation/recommend_widget.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/Home1.png"),
                  fit: BoxFit.cover),
            ),
            child: SafeArea(
              child: Container(
                padding: EdgeInsets.all(12),
                // width: double.infinity,
                child: Column(
                  // spacing: 20,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Choose Your Favorite \nSnack",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        child: Row(
                          spacing: 12,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("All categories"),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("Salty"),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("Sweet"),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("Drinks"),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 240,
                      width: 350,
                      // color: const Color.fromARGB(255, 100, 99, 93),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.white),
                      ),
                      // padding: EdgeInsets.all(24),

                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Angi`s Yummy Burger",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 18),
                                ),
                                Text(
                                    "Delish vegan burger \nthat tastes like heaven",
                                    style: TextStyle(color: Colors.white)),
                                Text(
                                  "€13.99",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                SizedBox(height: 30),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                  child: Text("Add to order"),
                                ),
                                SizedBox(height: 10),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: -30,
                            right: 0,
                            child: Image.asset("assets/images/Burger_3D.png"),
                            height: 150,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 40),
                    Text("We Recommend",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w900)),
                    SizedBox(height: 15),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        spacing: 12,
                        children: [
                          InkWell(
                            // Todo aufgehört! showButtomSheet
                            onTap: () {},
                            child: RecommendWidget(
                              recommendation: weRecommend1,
                            ),
                          ),
                          RecommendWidget(recommendation: weRecommend2),
                          RecommendWidget(recommendation: weRecommend3),
                          RecommendWidget(recommendation: weRecommend4),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
