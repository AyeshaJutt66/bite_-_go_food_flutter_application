
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/favorite_controller.dart';
import 'menupage.dart';

class FavoritePage extends StatelessWidget {
  FavoritePage({super.key});

  final FavoriteController favController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorites"),
        backgroundColor: Colors.orange,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Get.offAll(() => MenuPage());
            },

          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 16),
              child: Icon(Icons.search, color: Colors.black),
            )
          ],
        ),

      body: Obx(() {
        if (favController.favorites.isEmpty) {
          return const Center(
            child: Text("No favorite items ❤️"),
          );
        }

        return ListView.builder(
          itemCount: favController.favorites.length,
          itemBuilder: (context, index) {
            final item = favController.favorites[index];

            return ListTile(
              leading: Image.asset(item.image, width: 50),
              title: Text(item.title),
              subtitle: Text(item.subtitle),
              trailing: IconButton(
                icon: const Icon(Icons.delete, color: Colors.red),
                onPressed: () {
                  favController.toggleFavorite(item);
                },
              ),
            );
          },
        );
      }),
    );
  }
}
