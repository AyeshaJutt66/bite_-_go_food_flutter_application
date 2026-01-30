import 'package:first_task_of_internship/widget/custom_button.dart';
import 'package:first_task_of_internship/widget/portion_count.dart';
import 'package:first_task_of_internship/widget/spicy_level.dart';
import 'package:first_task_of_internship/widget/toppings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widget/ToppingElements.dart';
import 'payment.dart';

class BurgerCustomizePage extends StatefulWidget {
  const BurgerCustomizePage({super.key});

  @override
  State<BurgerCustomizePage> createState() => _BurgerCustomizePageState();
}

class _BurgerCustomizePageState extends State<BurgerCustomizePage> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Get.back(),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.search, color: Colors.black),
          )
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 150,
                  child: Image.asset(
                    "assets/images/customizedburger.png",
                    height: 300,
                    fit: BoxFit.contain,
                  ),
                ),

                const SizedBox(width: 20),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Customize Your Burger\n"
                            "to Your Tastes. Ultimate\n"
                            "Experience",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 18),


                      const SpicySliderWidget(),

                      const SizedBox(height: 18),

                      PortionCountWidget(count: count, onCountChanged: (value) {
                        setState(() {
                          count = value;
                        });
                      },),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            const Text(
              "Toppings",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),

            const SizedBox(height: 15),

            ToppingsElement(toppings),

            const SizedBox(height: 28),

            const Text(
              "Side options",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),

            const SizedBox(height: 15),

            ToppingsElement(sides),

            const SizedBox(height: 40),

            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child:CustomButton(
                      title: 'Rs ${599 * count}',
                      onTap: () {  },
                      backgroundColor: Colors.orange,

                      ),
                    ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: CustomButton(title: 'ORDER NOW', backgroundColor: Colors.black,
                      onTap: () {
                        Get.to(CartPage());
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
