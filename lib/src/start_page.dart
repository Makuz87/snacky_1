import 'package:flutter/material.dart';
import 'package:snacky_1/src/features/order/domain/order.dart';
import 'package:snacky_1/src/features/order/presentation/order_now_widget.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Splash4.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 100),
            child: OrderNowWidget(order: Orders),
          ),
        ),
      ),
    );
  }
}
