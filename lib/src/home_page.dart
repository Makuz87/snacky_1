import 'package:flutter/material.dart';
import 'package:snacky_1/src/features/order/domain/recommendation.dart';
import 'package:snacky_1/src/features/order/presentation/offer_card_widget.dart';
import 'package:snacky_1/src/features/order/presentation/recommend_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            child: Container(
              padding: EdgeInsets.all(12),
              // width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Choose Your Favorite \nSnack",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
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

                  OfferCardWidget(
                    title: "Add to order",
                  ),

                  SizedBox(height: 40),

                  Text(
                    "We Recommend",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w900),
                  ),

                  SizedBox(height: 20),

                  //  RECOMMEND
                  Container(
                    height: 262,
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
    );
  }
}
