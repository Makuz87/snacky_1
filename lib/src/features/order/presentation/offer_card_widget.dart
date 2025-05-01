import 'package:flutter/material.dart';
import 'package:snacky_1/src/features/order/presentation/add_to_card_btn1.dart';

class OfferCardWidget extends StatelessWidget {
  final String title;

  const OfferCardWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: 350,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/images/Top Card.png",
          ),
        ),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //
              children: [
                Text(
                  "Angi`s Yummy Burger",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 18),
                ),
                //
                Text("Delish vegan burger \nthat tastes like heaven",
                    style: TextStyle(color: Colors.white)),
                //
                Text(
                  "€13.99",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 30),
                //
                AddToCardBtn1(title: title),
                //
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
    );
  }
}
