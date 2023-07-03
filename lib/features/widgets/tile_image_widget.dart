import 'package:flutter/material.dart';
import 'image_loader_widget.dart';

class TileImageWidget extends StatelessWidget {
  final String urlImage;
  const TileImageWidget({super.key, required this.urlImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
      ),
      height: 60.0,
      width: 60.0,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5.0),
        child: ImageLoaderWidget(url: urlImage),
      ),
    );
  }
}
