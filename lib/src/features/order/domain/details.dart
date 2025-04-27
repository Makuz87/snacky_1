import 'package:flutter/material.dart';

class Details {
  final String title;
  final String description;
  final String price;
  final String ingredients;
  final IconData ingredientsIcon;
  final String reviews;
  final IconData stars;
  final String rating;

  Details({
    required this.title,
    required this.description,
    required this.price,
    required this.ingredients,
    required this.ingredientsIcon,
    required this.reviews,
    required this.stars,
    required this.rating,
  });
}

final DescriptionCard1 = Details(
  title: "Mogli`s",
  description: "description",
  price: "€ 8.99",
  ingredients: "Ingredients",
  ingredientsIcon: Icons.edit_attributes,
  reviews: "Reviews",
  stars: Icons.star,
  rating: "4.0",
);
