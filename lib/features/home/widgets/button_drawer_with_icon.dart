import 'package:flutter/material.dart';

class ButtonDrawerWithIcon extends StatelessWidget {
  const ButtonDrawerWithIcon(
      {super.key,
      required this.onTap,
      this.icon,
      required this.text,
      this.imageUrl});

  final VoidCallback onTap;
  final IconData? icon;
  final String? imageUrl;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: ListTile(
          title: Row(children: [
            icon != null
                ? Icon(
                    icon,
                    color: Colors.white,
                  )
                : Image(image: AssetImage(imageUrl!), width: 25.0),
            const SizedBox(width: 10),
            Text(text),
          ]),
          onTap: onTap,
        ));
  }
}
