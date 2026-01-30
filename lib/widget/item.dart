class Item {
  final String id;
  final String title;
  final String subtitle;
  final String image;
  final String description;
  final double rating;
  bool isFavorite;

  Item({
    required this.id,
    required this.title,
    this.subtitle = '',
    required this.image,
    required this.description,
    this.rating = 4.5,
    this.isFavorite = false,
  });
}

final List<Item> items = [
  Item(
    id: '1',
    image: "assets/images/cheeseburger (2).png",
    title: "Cheeseburger",
    subtitle: "Wendy's Burger",
    description:
    "The Cheeseburger Wendy's Burger is a classic fast food burger that packs a punch of flavor in every bite. Made with a juicy beef patty cooked to perfection, it's topped with melted American cheese, crispy lettuce, ripe tomato, and crunchy pickles.",
    rating: 4.9,
  ),
  Item(
    id: '2',
    image: 'assets/images/hamburger.png',
    title: 'Hamburger',
    subtitle: "Veggie Burger",
    description:
    "Enjoy our delicious Hamburger Veggie Burger, made with a savory blend of fresh vegetables and herbs, topped with crisp lettuce, juicy tomatoes and tangy pickles, all served on a soft, toasted bun.",
    rating: 4.7,
  ),
  Item(
    id: '3',
    image: 'assets/images/chickenburger.png',
    title: 'Hamburger',
    subtitle: "Chicken Burger",
    description:
    "Our chicken burger is a delicious and healthier alternative to traditional beef burgers, perfect for those looking for a lighter meal option. Try it today and experience the mouth-watering flavors of our Hamburger Chicken Burger.",
    rating: 4.6,
  ),
  Item(
    id: '4',
    image: 'assets/images/friedchickenburger.png',
    title: 'Hamburger',
    subtitle: "Fried Chicken Burger",
    description:
    "Indulge in our crispy and savory Fried Chicken Burger, made with a juicy chicken patty, hand-breaded and deep-fried to perfection, served on a warm bun with lettuce, tomato and a creamy sauce.",
    rating: 4.8,
  ),
];
// TODO Implement this library.