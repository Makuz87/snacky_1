import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:snacky_1/src/features/order/domain/order.dart';
import 'package:snacky_1/src/home_page.dart';

class OrderNowWidget extends StatelessWidget {
  final Order order;

  const OrderNowWidget({
    super.key,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
        child: Container(
          padding: EdgeInsets.all(24),
          height: 230,
          width: 360,
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromARGB(255, 100, 100, 100),
              width: 0.5,
            ),
            color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
            borderRadius: BorderRadius.circular(24),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //Todo egal welcher Name?
              Text(Orders.title),
              Text(
                order.title,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 24,
                  letterSpacing: -0.5,
                ),
              ),
              Text(
                textAlign: TextAlign.center,
                order.description,
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: -0.4,
                  wordSpacing: -0.4,
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ));
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  foregroundColor: Colors.transparent,
                  backgroundColor: Colors.transparent,
                ),
                child: Ink(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.purple, Colors.pinkAccent],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Container(
                    // alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 64, vertical: 12),
                    child: Text(
                      "Order Now",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
