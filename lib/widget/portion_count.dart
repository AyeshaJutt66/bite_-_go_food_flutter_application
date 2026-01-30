import 'package:flutter/material.dart';
import 'button_decorate.dart';

class PortionCountWidget extends StatefulWidget {
  final int count;
  final Function(int) onCountChanged;

  const PortionCountWidget({
    super.key,
    required this.count,
    required this.onCountChanged,
  });

  @override
  State<PortionCountWidget> createState() => _PortionCountWidgetState();
}

class _PortionCountWidgetState extends State<PortionCountWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Portion",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Button(
              color: Colors.orange,
              icon: Icons.remove,
              onTap: () {
                if (widget.count > 1) {
                  widget.onCountChanged(widget.count - 1);
                }
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                widget.count.toString(),
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Button(
              color: Colors.orange,
              icon: Icons.add,
              onTap: () {
                widget.onCountChanged(widget.count + 1);
              },
            ),
          ],
        ),
      ],
    );
  }
}
