import 'package:url_launcher/url_launcher.dart';

Future<void> createUrl(String url) async {
  final Uri uri = Uri.parse(url);
  if (!await launchUrl(uri)) {
    throw 'No se pudo abrir la url $url';
  }
}
