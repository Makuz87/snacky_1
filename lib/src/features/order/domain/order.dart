import 'package:flutter/material.dart';

class Order {
  final String title;
  final String description;
  final ElevatedButton orderNow;

  Order({
    required this.title,
    required this.description,
    required this.orderNow,
  });
}

final Orders = Order(
  title: "Feeling snackish Today?",
  description:
      "Explore Angi`s most popular snack selection \nand get instantly happy.",
  orderNow: ElevatedButton(
    onPressed: () {},
    child: Text(
      "Order Now",
      style: TextStyle(
        fontSize: 12,
      ),
    ),
  ),
);
