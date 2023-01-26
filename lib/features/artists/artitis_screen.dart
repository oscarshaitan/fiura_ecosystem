import 'package:auto_route/auto_route.dart';
import 'package:fiura_ecosystem/router/app_router.gr.dart';
import 'package:flutter/material.dart';

class ArtistsScreen extends StatelessWidget {
  const ArtistsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('Artist id 1'),
        onPressed: () {
          context.router.push(
            ArtistsDetailScreenRoute(artistId: 'Artist Id 1'),
          );
        },
      ),
    );
  }
}
