import 'package:first_task_of_internship/screens/payment.dart';
import 'package:first_task_of_internship/widget/item.dart';
import 'package:first_task_of_internship/widget/portion_count.dart';
import 'package:first_task_of_internship/widget/spicy_level.dart';
import 'package:flutter/material.dart';
import 'package:first_task_of_internship/screens/customized_burger.dart';
import 'package:get/get.dart';

import '../widget/custom_button.dart';

class DetailScreen extends StatefulWidget {
  final Item item;


  const DetailScreen({super.key, required this.item});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int count=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () => Get.back(),
                  ),
                  IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {},
                  ),
                ],
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Center(
                      child: GestureDetector(
                        onTap: () => Get.to(BurgerCustomizePage()),
                        child: SizedBox(
                          height: 220,
                          child: Image.asset(
                            widget.item.image,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    Text(
                      "${widget.item.title} ${widget.item.subtitle}",
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 12),

                    Text(
                      widget.item.description,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey.shade600,
                        height: 1.5,
                      ),
                    ),

                    const SizedBox(height: 28),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SpicySliderWidget(),
                        PortionCountWidget(
                          count: count,
                          onCountChanged: (value) {
                            setState(() {
                              count = value;
                            });
                          },
                        ),
                      ],
                    ),

                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
              child: Row(
                children: [
                  Expanded(
                    child: CustomButton(backgroundColor: Colors.orange,
                      onTap: () {},
                      title:
                        'Rs ${599 * count}',
                    ),
                  ),

                  const SizedBox(width: 16),

                  Expanded(
                    child: CustomButton(
                      onTap: () => Get.to(CartPage()),
                      title:
                        'ORDER NOW',
                        backgroundColor: Colors.black,
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