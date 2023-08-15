import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void loadPostModal({
  required BuildContext context,
  required String postUrl,
}) {
  Future<void> createUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw 'No se pudo abrir el post $url';
    }
  }

  showDialog(
      context: context,
      builder: ((context) {
        return AlertDialog(
          backgroundColor: const Color(0xff353535),
          title: const Text('¿Abrir enlace?'),
          content: const Text(
              'Estás a punto de navegar a una página web en donde se encuentra esta noticia, ¿continuar?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                createUrl(postUrl);
                Navigator.pop(context);
              },
              child: const Text('Continuar'),
            ),
          ],
        );
      }));
}
