import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:snacky_1/src/features/order/domain/order.dart';
import 'package:snacky_1/src/features/order/presentation/add_to_card_btn.dart';

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
              AddToCardBtn(title: "Order Now")
            ],
          ),
        ),
      ),
    );
  }
}
