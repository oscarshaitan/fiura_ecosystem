import 'package:flutter/material.dart';

class ChargingWidget extends StatelessWidget {
  const ChargingWidget({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircularProgressIndicator(),
          const SizedBox(height: 20),
          Text(message),
        ],
      ),
    );
  }
}
