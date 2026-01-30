import 'package:first_task_of_internship/screens/favorite_page.dart';
import 'package:first_task_of_internship/screens/message_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'menupage.dart';
import 'profile_page.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({super.key});

  final RxInt selectedIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(() => BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 8,
      child: Container(
        height: 70,
        decoration: const BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            bottomIcon(Icons.home, 0),
            bottomIcon(Icons.person, 1),
            const SizedBox(width: 40),
            bottomIcon(Icons.receipt_long, 2),
            bottomIcon(Icons.favorite, 3),
          ],
        ),
      ),
    ));
  }

  Widget bottomIcon(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        selectedIndex.value = index;

        switch (index) {
          case 0:
            Get.offAll(() =>  MenuPage());
            break;
          case 1:
            Get.offAll(() =>  ProfilePage());
            break;
          case 2:
            Get.offAll(() => MessagePage());
            break;
          case 3:
            Get.offAll(() => FavoritePage());
            break;
        }
      },
      child: Icon(
        icon,
        size: 28,
        color: selectedIndex.value == index
            ? Colors.white
            : Colors.white.withOpacity(0.6),
      ),
    );
  }
}
