import 'package:flutter/material.dart';
import '../../../utils/url_generator.dart';

void loadPostModal({
  required BuildContext context,
  required String postUrl,
}) {
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
