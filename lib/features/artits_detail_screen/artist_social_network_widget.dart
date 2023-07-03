import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/social_media_icon_selector.dart';

class ArtistSocialNetworkWidget extends StatelessWidget {
  const ArtistSocialNetworkWidget({super.key, required this.socialMediaLinks});

  final List<String?> socialMediaLinks;

  @override
  Widget build(BuildContext context) {
    Future<void> createUrl(String url) async {
      final Uri uri = Uri.parse("https://$url");
      if (!await launchUrl(uri)) {
        throw 'No se pudo abrir la url $url';
      }
    }

    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (final link in socialMediaLinks)
            GestureDetector(
              onTap: () => createUrl(link),
              child: Padding(
                padding: const EdgeInsets.only(right: 30.0),
                child: getSocialMediaIcon(link!),
              ),
            )
        ],
      ),
    );
  }
}
