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
  title: "Mogli`s Cup",
  description:
      "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea",
  price: "€ 8.99",
  ingredients: "Ingredients",
  ingredientsIcon: Icons.edit_attributes,
  reviews: "Reviews",
  stars: Icons.star,
  rating: "4.0",
);

final DescriptionCard2 = Details(
  title: "Balu`s Cup",
  description:
      "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea",
  price: "€ 8.99",
  ingredients: "Ingredients",
  ingredientsIcon: Icons.edit_attributes,
  reviews: "Reviews",
  stars: Icons.star,
  rating: "4.0",
);

final DescriptionCard3 = Details(
  title: "Smiling David",
  description:
      "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea",
  price: "€ 3.99",
  ingredients: "Ingredients",
  ingredientsIcon: Icons.edit_attributes,
  reviews: "Reviews",
  stars: Icons.star,
  rating: "4.0",
);

final DescriptionCard4 = Details(
  title: "Kain in a Cone",
  description:
      "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea",
  price: "€ 3.99",
  ingredients: "Ingredients",
  ingredientsIcon: Icons.edit_attributes,
  reviews: "Reviews",
  stars: Icons.star,
  rating: "4.0",
);
