import 'package:fiura/core/entities/artist_entity/artist_entity.dart';
import 'package:fiura/features/artits_detail_screen/artist_social_network_widget.dart';
import 'package:fiura/features/widgets/image_app_bar_widget.dart';
import 'package:flutter/material.dart';

class ArtistDetailBodyWidget extends StatefulWidget {
  const ArtistDetailBodyWidget({super.key, required this.artist});

  final ArtistEntity artist;

  @override
  State<ArtistDetailBodyWidget> createState() => _ArtistDetailBodyWidgetState();
}

class _ArtistDetailBodyWidgetState extends State<ArtistDetailBodyWidget> {
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
        // FlexibleSpacebar is compressed
      }
    } else {
      if (!_isExpanded) {
        setState(() {
          _isExpanded = true;
        });
        // FlexibleSpacebar is expanded
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: _scrollController,
      slivers: [
        ImageAppBarWidget(
          type: "Artista",
          urlImage: widget.artist.musician.urlPhoto,
          artistName: widget.artist.musician.name,
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
                      Text(widget.artist.musician.about),
                      const SizedBox(height: 30.0),
                      if (widget.artist.musician.socialNetwork.isNotEmpty)
                        Align(
                          alignment: Alignment.center,
                          child: ArtistSocialNetworkWidget(
                              socialMediaLinks:
                                  widget.artist.musician.socialNetwork),
                        ),
                    ]),
              ),
            ],
          ),
        )
      ],
    );
  }
}
