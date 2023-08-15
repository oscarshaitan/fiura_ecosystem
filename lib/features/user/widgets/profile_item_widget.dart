import 'package:flutter/material.dart';

class ProfileItemWidget extends StatelessWidget {
  const ProfileItemWidget(
      {super.key, required this.itemName, required this.itemValue});

  final String itemName;
  final String itemValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "$itemName:",
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
          ),
          const Spacer(),
          Text(
            itemValue,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: const Color(0xff717171),
                ),
          ),
        ],
      ),
    );
  }
}
