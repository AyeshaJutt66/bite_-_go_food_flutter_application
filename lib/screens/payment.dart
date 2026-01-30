import 'package:first_task_of_internship/screens/success_popup.dart';
import 'package:first_task_of_internship/widget/cardPayment.dart';
import 'package:first_task_of_internship/widget/custom_button.dart';
import 'package:first_task_of_internship/widget/raw_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartPage extends StatelessWidget {
  const CartPage({ super.key});

  @override
  Widget build(BuildContext context) {
    int count = 1;
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
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// Order Summary
            const Text(
              "Order summary",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            rowText("Order", "1688"),
            const SizedBox(height: 10),
            rowText("Taxes", "15%"),
            const SizedBox(height: 10),
            rowText("Delivery fees", "100"),

            const Divider(height: 30),

            rowText(
              "Total:",
              "Rs 1960",
              isBold: true,
            ),

            const SizedBox(height: 10),

            rowText(
              "Estimated delivery time:",
              "15 - 30mins",
              small: true,
            ),

            const SizedBox(height: 30),

            /// Payment Methods
            const Text(
              "Payment methods",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 15),

            paymentCard(
              selected: true,
              cardType: "Credit Card",
              cardNumber: "5105 **** **** 0505",
              logo: "assets/images/credit-card.png",
            ),

            const SizedBox(height: 15),

            paymentCard(
              selected: false,
              cardType: "Debit Card",
              cardNumber: "3566 **** **** 0505",
              logo: "assets/images/debit_card.png",
            ),

            const SizedBox(height: 15),

            /// Save Card Checkbox
            Row(
              children: [
                Checkbox(
                  value: true,
                  activeColor: Colors.orange,
                  onChanged: (_) {},
                ),
                const Text("Save card details for future payments"),
              ],
            ),

            const Spacer(),

            /// Bottom Buttons
            Row(
              children: [
                Expanded(
                  child: CustomButton(title: 'Rs ${599 * count}', onTap: (){
              Get.to(SuccessPopup());}, backgroundColor: Colors.orange,)
                  ),
                const SizedBox(width: 15),
                Expanded(
                  child: CustomButton(title: 'Pay Now', onTap: (){
                    Get.to(SuccessPopup());}, backgroundColor: Colors.black,)
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
