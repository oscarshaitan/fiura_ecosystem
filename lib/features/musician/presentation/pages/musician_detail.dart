import 'package:fiura/core/entities/musician_entity/musician_entity.dart';
import 'package:fiura/dependencies.dart';
import 'package:fiura/features/musician/presentation/cubit/musician_cubit.dart';
import 'package:fiura/features/musician/presentation/cubit/musician_state.dart';
import 'package:fiura/features/musician/presentation/pages/musician_social_network_widget.dart';
import 'package:fiura/features/widgets/image_app_bar_widget.dart';
import 'package:fiura/features/widgets/on_load_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MusicianDetailScreen extends StatefulWidget {
  const MusicianDetailScreen({
    Key? key,
    required this.musicianType,
    required this.musicianId,
  }) : super(key: key);

  final String musicianId;
  final MusicianType musicianType;

  @override
  State<MusicianDetailScreen> createState() => _MusicianDetailScreenState();
}

class _MusicianDetailScreenState extends State<MusicianDetailScreen> {
  ScrollController? _scrollController;
  bool _isExpanded = true;

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController!.addListener(_handleScroll);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController!.dispose();
    super.dispose();
  }

  void _handleScroll() {
    if (_scrollController!.offset > kToolbarHeight + 220.0) {
      if (_isExpanded) {
        setState(() {
          _isExpanded = false;
        });
      }
    } else {
      if (!_isExpanded) {
        setState(() {
          _isExpanded = true;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => getIt<MusicianCubit>()
          ..getMusician(widget.musicianId, widget.musicianType),
        child: BlocBuilder<MusicianCubit, MusicianState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const Center(
                child: Text("Ups! Ocurrió un error inesperado"),
              ),
              loading: () => const Center(
                child: OnLoadMessage(),
              ),
              error: (message) => Center(child: Text(message)),
              loadMusician: (musician) => CustomScrollView(
                controller: _scrollController,
                slivers: [
                  ImageAppBarWidget(
                    type: widget.musicianType == MusicianType.artist
                        ? "Artista"
                        : "Jurado",
                    urlImage: musician.urlPhoto,
                    artistName: musician.name,
                    isExpanded: _isExpanded,
                  ),
                  SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        Container(
                          margin: const EdgeInsets.all(20.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Descripción",
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                                const SizedBox(height: 15.0),
                                Text(musician.about),
                                const SizedBox(height: 30.0),
                                if (musician.socialNetwork.isNotEmpty)
                                  Align(
                                    alignment: Alignment.center,
                                    child: MusicianSocialNetworkWidget(
                                        socialMediaLinks:
                                            musician.socialNetwork),
                                  ),
                              ]),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
