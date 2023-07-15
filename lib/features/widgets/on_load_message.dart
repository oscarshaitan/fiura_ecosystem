import 'package:flutter/material.dart';

class OnLoadMessage extends StatelessWidget {
  const OnLoadMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircularProgressIndicator(),
        SizedBox(
          height: 20.0,
        ),
        Text("Cargando..."),
      ],
    );
  }
}
