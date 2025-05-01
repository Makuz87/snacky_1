class Recommendation {
  final String title;
  final String description;
  final String price;
  final String likes;
  final String imagePath;

  Recommendation({
    required this.title,
    required this.description,
    required this.price,
    required this.likes,
    required this.imagePath,
  });
}

List<Recommendation> recommendations = [
  Recommendation(
    title: "Moglis Cup",
    description: "Strawberry ice cream",
    price: "₳8.99",
    likes: "200",
    imagePath: "assets/images/cat cupcakes_3D_Mogli.png",
  ),
  Recommendation(
    title: "Balu`s Cup",
    description: "Pistachio ice cream",
    price: "8.99",
    likes: "165",
    imagePath: "assets/images/Ice.cream.png",
  ),
  Recommendation(
      title: "Balu`s Cup",
      description: "Pistachio ice cream",
      price: "8.99",
      likes: "165",
      imagePath: "assets/images/Ice.cream.png"),
  Recommendation(
    title: "Smiling David",
    description: "Coffe ice cream",
    price: "3.99",
    likes: "310",
    imagePath: "assets/images/ice cream stick_3D.png",
  ),
  Recommendation(
    title: "Kai in a Cone",
    description: "Vanilla ice cream",
    price: "3.99",
    likes: "290",
    imagePath: "assets/images/cat cupcakes_3D_Mogli.png",
  )
];
