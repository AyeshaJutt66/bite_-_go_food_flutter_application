import 'package:flutter/material.dart';
import 'package:first_task_of_internship/screens/menupage.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'controllers/favorite_controller.dart';

void main() {
  Get.put(FavoriteController()); // register globally
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home: SplashScreen(), debugShowCheckedModeBanner: false);
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => MenuPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFFFE0B2),
              Color(0xFFFF7043),
            ],
          ),
        ),
        child: Stack(
          children: [
            const Center(
              child: Text(
                'Bite & Go',
                style: TextStyle(
                  fontSize: 46,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),

                Positioned(
                  top: 681,
                  left: -42,
                  child: Image.asset(
                    'assets/images/uilargerburger.png',
                    width: 246,
                    height: 288,
                  ),
                ),

                Positioned(
                  top: 758,
                  left: 134,
                  child: Image.asset(
                    'assets/images/uismallburger.png',
                    width: 202,
                    height: 202,
                  ),
                ),
              ],
            ),
          ),
    );
  }
}
