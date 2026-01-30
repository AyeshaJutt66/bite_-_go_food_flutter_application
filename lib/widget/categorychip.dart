import 'package:flutter/material.dart';

Widget categoryChip(String text, bool selected) {
  return Container(
    margin: const EdgeInsets.only(right: 10),
    padding: const EdgeInsets.symmetric(horizontal: 20),
    decoration: BoxDecoration(
      color: selected ? Colors.orange : Colors.grey.shade200,
      borderRadius: BorderRadius.circular(30),
    ),
    alignment: Alignment.center,
    child: Text(
      text,
      style: TextStyle(
        color: selected ? Colors.white : Colors.black,
      ),
    ),
  );
}// TODO Implement this library.