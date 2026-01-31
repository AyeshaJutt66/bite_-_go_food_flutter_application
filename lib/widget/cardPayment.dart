import 'package:flutter/material.dart';

Widget paymentCard({
  required bool selected,
  required String cardType,
  required String cardNumber,
  required String logo,
}) {
  return Container(
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: selected ? const Color(0xFF3B2F2F) : Colors.white,
      borderRadius: BorderRadius.circular(15),
      border: Border.all(
        color: selected ? Colors.transparent : Colors.grey.shade300,
      ),
      boxShadow: [
        if (!selected)
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
      ],
    ),
    child: Row(
      children: [
        /// CARD LOGO
        Image.asset(
          logo,
          width: 45,
          height: 30,
          fit: BoxFit.contain,
        ),

        const SizedBox(width: 15),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cardType,
              style: TextStyle(
                color: selected ? Colors.white : Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              cardNumber,
              style: TextStyle(
                color: selected ? Colors.white70 : Colors.grey,
                fontSize: 14,
              ),
            ),
          ],
        ),

        const Spacer(),

        Icon(
          selected
              ? Icons.radio_button_checked
              : Icons.radio_button_off,
          color: selected ? Colors.white : Colors.grey,
        ),
      ],
    ),
  );
}
