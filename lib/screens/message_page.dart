import 'package:first_task_of_internship/widget/chat_bubble.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'menupage.dart';

class MessagePage extends StatelessWidget {
  MessagePage({super.key});

  final List<Map<String, dynamic>> messages = [
    {
      "text": "Hi, how can I help you?",
      "isUser": false,
    },
    {
      "text":
      "Hello, I ordered two fried chicken burgers. can I know how much time it will get to arrive?",
      "isUser": true,
    },
    {
      "text": "Ok, please let me check!",
      "isUser": false,
    },
    {
      "text": "Sure...",
      "isUser": true,
    },
    {
      "text": "It’ll get 25 minutes to arrive to your address",
      "isUser": false,
    },
    {
      "text": "Ok, thanks you for your support",
      "isUser": true,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.offAll(() => MenuPage());
          },
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.menu),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),

      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final msg = messages[index];
                return chatBubble(
                  msg["text"],
                  msg["isUser"],
                );
              },
            ),
          ),

          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 6,
                )
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Type here...",
                      filled: true,
                      fillColor: Colors.grey.shade100,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.orange,
                  child: const Icon(
                    Icons.send,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}