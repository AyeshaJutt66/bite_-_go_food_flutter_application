import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widget/info_field.dart';
import '../widget/option_tile.dart';
import 'menupage.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    const double headerHeight = 260;
    const double avatarSize = 120;

    return Scaffold(
      backgroundColor: Colors.yellow,
      body: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Column(
              children: [
                // HEADER
                Container(
                  height: headerHeight,
                  width: double.infinity,
                  color: Colors.orangeAccent,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        left: -120,
                        child: Image.asset(
                          'assets/images/profile_burger.png',
                          height: headerHeight,
                          color: Colors.orangeAccent.withOpacity(0.5),
                          colorBlendMode: BlendMode.modulate,
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: -120,
                        child: Image.asset(
                          'assets/images/profile_burger.png',
                          height: headerHeight,
                          color: Colors.orangeAccent.withOpacity(0.5),
                          colorBlendMode: BlendMode.modulate,
                        ),
                      ),
                      // HEADER ICONS
                      Positioned(
                        top: 40,
                        left: 16,
                        child: IconButton(
                          icon: const Icon(Icons.arrow_back),
                          onPressed: () {
                            Get.offAll(() => MenuPage());
                          },
                        ),),
                      const Positioned(
                        top: 40,
                        right: 16,
                        child: Icon(Icons.settings, color: Colors.white),
                      ),
                    ],
                  ),
                ),

                // WHITE CARD
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                    BorderRadius.vertical(top: Radius.circular(30)),
                  ),
                  padding: EdgeInsets.only(
                    top: avatarSize / 2 + 20, // leave space for avatar overlap
                    left: 20,
                    right: 20,
                    bottom: 40,
                  ),
                  child: Column(
                    children: [
                      // INFO FIELDS
                      infoField("Name", "HCI"),
                      infoField("Email", "hci123@gmail.com"),
                      infoField(
                        "Delivery address",
                        "Street A3 House 6 F8/3 Islamabad",
                      ),
                      infoField("Password", "••••••••"),

                      const SizedBox(height: 20),
                      optionTile("Payment Details"),
                      optionTile("Order history"),

                      const SizedBox(height: 30),
                      Row(
                        children: [
                          // EDIT TEXT BUTTON (black)
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                padding: const EdgeInsets.symmetric(vertical: 14),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    'Edit Text',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(width: 8),
                                  Icon(
                                    Icons.edit_calendar_outlined,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),

                          const SizedBox(width: 15),

                          // LOG OUT BUTTON (white)
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                padding: const EdgeInsets.symmetric(vertical: 14),
                                side: const BorderSide(color: Colors.black),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    'Log Out',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  SizedBox(width: 8),
                                  Icon(
                                    Icons.logout,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )

                    ],
                  ),
                ),
              ],
            ),

            // AVATAR (on top of header and card)
            Positioned(
              top: headerHeight - avatarSize / 2,
              left: MediaQuery.of(context).size.width / 2 - avatarSize / 2,
              child: Container(
                width: avatarSize,
                height: avatarSize,
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(22),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Container(
                    color: Colors.grey.shade200,
                    child: const Icon(
                      Icons.person,
                      size: avatarSize,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
