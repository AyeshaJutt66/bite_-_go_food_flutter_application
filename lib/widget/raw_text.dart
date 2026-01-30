import 'package:flutter/material.dart';

Widget rowText(String left, String right,
{bool isBold = false, bool small = false}) {
return Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Text(
left,
style: TextStyle(
fontSize: small ? 14 : 16,
fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
color: small ? Colors.grey : Colors.black,
),
),
Text(
right,
style: TextStyle(
fontSize: small ? 14 : 16,
fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
),
),
],
);
}