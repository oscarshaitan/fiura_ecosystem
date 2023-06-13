
import 'package:flutter/material.dart';

class DangerText extends StatelessWidget {
  final String text;
  const DangerText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        textAlign: TextAlign.start,
        text,
        style: const TextStyle(
          color: Colors.red,
          fontSize: 12.0,
        ),
      ),
    );
  }
}
