import 'package:get/get.dart';
import '../widget/item.dart'; // your Item model

class FavoriteController extends GetxController {
  var favorites = <Item>[].obs;

  void toggleFavorite(Item item) {
    if (favorites.contains(item)) {
      favorites.remove(item);
    } else {
      favorites.add(item);
    }
  }

  bool isFavorite(Item item) {
    return favorites.contains(item);
  }
}

// TODO Implement this library.