import 'package:flutter/material.dart';

class ImageAppBarWidget extends StatelessWidget {
  const ImageAppBarWidget({
    super.key,
    required this.urlImage,
    required this.artistName,
    required this.isExpanded,
    required this.type,
  });

  final String urlImage;
  final String artistName;
  final bool isExpanded;
  final String type;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 360.0,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          alignment: Alignment.center,
          children: [
            Positioned.fill(
              child: Image.network(
                urlImage,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0x001d1d1d),
                    Color(0x501d1d1d),
                    Color(0x7f1d1d1d),
                    Color(0xb41d1d1d),
                    Color(0xeb1d1d1d),
                    Color(0xff1d1d1d),
                  ],
                  stops: [0.0, 0.5, 0.7, 0.8, 0.9, 1.0],
                ),
              ),
            ),
          ],
        ),
        title: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              artistName,
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(fontSize: isExpanded ? 30.0 : 20.0),
            ),
            if (isExpanded)
              Text(
                type,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: const Color(0XFFe45343),
                    ),
              ),
          ],
        ),
        centerTitle: isExpanded == true,
      ),
      floating: true,
      pinned: true,
    );
  }
}
