import 'package:fiura/core/entities/musician_entity/musician_entity.dart';
import 'package:fiura/features/musician/presentation/pages/musician_detail_body_widget.dart';
import 'package:flutter/material.dart';

class MusicianDetailScreen extends StatelessWidget {
  const MusicianDetailScreen({
    Key? key,
    required this.musician,
  }) : super(key: key);

  final MusicianEntity musician;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MusicianDetailBodyWidget(musician: musician),
    );
  }
}
