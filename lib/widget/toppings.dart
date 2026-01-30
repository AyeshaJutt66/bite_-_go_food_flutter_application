class ToppingItem {
  final String name;
  final String image;

  ToppingItem({required this.name, required this.image});
}
final toppings = [
  ToppingItem(name: "Tomato", image: "assets/images/tamato.png"),
  ToppingItem(name: "Onions", image: "assets/images/onion.png"),
  ToppingItem(name: "Pickles", image: "assets/images/pickles.png"),
  ToppingItem(name: "Bacons", image: "assets/images/bacons.png"),
];
final sides = [
  ToppingItem(name: "Fries", image: "assets/images/fries.png"),
  ToppingItem(name: "Coleslaw", image: "assets/images/coleslaw.png"),
  ToppingItem(name: "Salad", image: "assets/images/salad.png"),
  ToppingItem(name: "Onions", image: "assets/images/onions.png"),
];

