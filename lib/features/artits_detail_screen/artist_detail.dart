import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class ArtistsDetailScreen extends StatelessWidget {
  const ArtistsDetailScreen({
    Key? key,
    @PathParam() required this.artistId,
  }) : super(key: key);

  final String artistId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(artistId),
    );
  }
}
