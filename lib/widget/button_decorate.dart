import 'package:flutter/material.dart';


Widget Button({required IconData icon, required VoidCallback onTap,required Color color}) {
  return InkWell(
    onTap: onTap,
    borderRadius: BorderRadius.circular(8),
    child: Container(
      width: 36,
      height: 36,
      decoration: BoxDecoration(color: Colors.orange,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(color: Colors.white,
        icon,
      ),
    ),
  );
}

