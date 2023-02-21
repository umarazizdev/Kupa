class ProdInfo {
  final String name;
  final String image;
  final String price;
  final String description;
  ProdInfo({
    required this.name,
    required this.image,
    required this.price,
    required this.description,
  });
}

List Prod = [
  ProdInfo(
      description:
          "Sweet and sour pork is probably the most famous Hong Kong food, which has made its way into Chinese take away menus around the world",
      name: "HongKong Hianane food sweet taste",
      image:
          "https://media.istockphoto.com/id/1197446921/photo/butcher-cutting-barbequed-pork-also-known-as-cha-siu-at-a-hong-kong-meat-stall.jpg?s=612x612&w=0&k=20&c=L0FCnbGe9EKYLafPurz7oJOzUx-nlLnOcXJUtU2Uoro=",
      price: "\$${14.99}"),
  ProdInfo(
      description:
          "Hot and Sour soup is a Chinese soup that's savoury, spicy and tangy. The broth is thickened and it's filled with mushrooms, tofu, bamboo shoots and silky egg ribbons. The flavour and textures in this soup are an addictive combination, making it a firm Chinese restaurant favourite!",
      name: "Hot and sorce corne soap ",
      image:
          "https://www.vegrecipesofindia.com/wp-content/uploads/2021/07/hot-and-sour-soup-1.jpg",
      price: "\$${20.99}"),
  ProdInfo(
      description:
          "Singaporean food can be divided into six types: meat, seafood, rice, noodles, dessert and snacks. Singapore is especially renowned for its seafood. Chili crab and black pepper crab are two quintessential dishes that dominate the scene and are greatly recommended to tourists. Another favourite is sambal stingray",
      name: "Singapur Hianance with cool food",
      image:
          "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/copycat-hamburger-helper1-1659463591.jpg?crop=0.668xw:1.00xh;0.176xw,0&resize=640:*",
      price: "\$${24.99}"),
];
