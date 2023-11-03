import 'package:flutter/material.dart';

class ImageLoaderWidget extends StatelessWidget {
  final String url;
  final BoxFit? fit;

  const ImageLoaderWidget({super.key, required this.url, this.fit = BoxFit.cover});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: precacheImage(NetworkImage(url), context),
      builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: SizedBox(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            ),
          );
        } else {
          return ClipRect(
            child: Image(
              image: NetworkImage(url),
              fit: fit,
            ),
          );
        }
      },
    );
  }
}
