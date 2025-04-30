import 'package:flutter/material.dart';

class OfferCardWidget extends StatelessWidget {
  const OfferCardWidget({
    super.key,
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
      )
          // color: const Color.fromARGB(255, 92, 45, 45).withOpacity(0.4),
          // borderRadius: BorderRadius.circular(30),
          // border: Border.all(color: Colors.white),
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
                Text("Delish vegan burger \nthat tastes like heaven",
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
    );
  }
}
