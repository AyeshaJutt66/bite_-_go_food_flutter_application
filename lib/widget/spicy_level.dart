import 'package:flutter/material.dart';

class SpicySliderWidget extends StatefulWidget {
  const SpicySliderWidget({super.key});

  @override
  State<SpicySliderWidget> createState() => _SpicySliderWidgetState();
}

class _SpicySliderWidgetState extends State<SpicySliderWidget> {
  double spiceLevel = 0.0; // 0 = Mild, 1 = Hot

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [SizedBox(height: 23,),
        const Text(
          "Spicy Level",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Slider(
          value: spiceLevel,
          min: 0,
          max: 1,
          divisions: 2,
          onChanged: (value) {
            setState(() => spiceLevel = value);
          },
          activeColor: Colors.orange,
        ),

        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Mild",style: TextStyle(color: Colors.green),),
            SizedBox(width: 90,),
            Text("Hot",style: TextStyle(color: Colors.orange)),
          ],
        ),
      ],
    );
  }
}
