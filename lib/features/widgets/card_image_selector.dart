import 'dart:io';
import 'package:flutter/material.dart';

class CardImageSelector extends StatelessWidget {
  final File? imageFile;
  final double height;
  final double width;
  final VoidCallback onTap;
  final String label;
  final Color borderColor;

  const CardImageSelector(
      {super.key,
      this.imageFile,
      required this.height,
      required this.width,
      required this.onTap,
      required this.label,
      required this.borderColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            image: imageFile != null
                ? DecorationImage(
                    fit: BoxFit.cover,
                    image: FileImage(imageFile!),
                  )
                : null,
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            color: imageFile == null ? Colors.transparent : null,
            border: Border.all(
              color: borderColor,
            ),
            shape: BoxShape.rectangle,
            boxShadow: imageFile != null
                ? const <BoxShadow>[
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 15.0,
                      offset: Offset(0.0, 7.0),
                    ),
                  ]
                : null),
        child: imageFile == null
            ? _withoutImage(label: label, context: context)
            : null,
      ),
    );
  }
}

Widget _withoutImage({required String label, required BuildContext context}) {
  return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
    Icon(
      Icons.add_photo_alternate,
      size: 100.0,
      color: Theme.of(context)
          .inputDecorationTheme
          .enabledBorder!
          .borderSide
          .color,
    ),
    const SizedBox(height: 10.0),
    Text(label)
  ]);
}

// class _WithoutImage extends StatelessWidget {
//   final String label;
//   final Color borderColor;

//   const _WithoutImage({
//     Key? key,
//     required this.label,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//       Icon(
//         Icons.add_photo_alternate,
//         size: 100.0,
//         color: borderColor,
//       ),
//       const SizedBox(height: 10.0),
//       Text(label)
//     ]);
//   }
// }
