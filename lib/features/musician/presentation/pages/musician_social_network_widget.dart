import 'package:fiura/features/utils/url_generator.dart';
import 'package:fiura/features/widgets/social_media_icon_selector.dart';
import 'package:flutter/material.dart';

class MusicianSocialNetworkWidget extends StatelessWidget {
  const MusicianSocialNetworkWidget(
      {super.key, required this.socialMediaLinks});

  final List<String?> socialMediaLinks;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (final link in socialMediaLinks)
            if (link != null && link.isNotEmpty)
              GestureDetector(
                onTap: () => createUrl(link),
                child: Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: getSocialMediaIcon(link),
                ),
              )
        ],
      ),
    );
  }
}
