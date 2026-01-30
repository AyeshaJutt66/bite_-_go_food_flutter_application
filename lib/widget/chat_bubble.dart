import 'package:first_task_of_internship/widget/avator.dart';
import 'package:flutter/material.dart';


Widget chatBubble(String text, bool isUser) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8),
    child: Row(
      mainAxisAlignment:
      isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        if (!isUser) avatar(),

        Container(
          constraints: const BoxConstraints(maxWidth: 260),
          padding: const EdgeInsets.all(14),
          margin: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: isUser ? Colors.orange : Colors.grey.shade200,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: isUser ? Colors.white : Colors.black,
            ),
          ),
        ),

        if (isUser) avatar(),
      ],
    ),
  );
}
