import 'package:fiura/core/entities/sponsor_entity/sponsor_entity.dart';
import 'package:fiura/features/musician/presentation/pages/musician_social_network_widget.dart';
import 'package:fiura/features/widgets/image_app_bar_widget.dart';
import 'package:flutter/material.dart';

class SponsorDetailBodyWidget extends StatefulWidget {
  const SponsorDetailBodyWidget({super.key, required this.sponsor});

  final SponsorEntity sponsor;

  @override
  State<SponsorDetailBodyWidget> createState() =>
      _SponsorDetailBodyWidgetState();
}

class _SponsorDetailBodyWidgetState extends State<SponsorDetailBodyWidget> {
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
          type: "Patrocinador",
          urlImage: widget.sponsor.urlPhoto,
          artistName: widget.sponsor.name,
          isExpanded: _isExpanded,
        ),
        SliverList(
            delegate: SliverChildListDelegate([
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
                Text(widget.sponsor.about),
                const SizedBox(height: 30.0),
                if (widget.sponsor.socialNetwork.isNotEmpty)
                  Align(
                    alignment: Alignment.center,
                    child: MusicianSocialNetworkWidget(
                      socialMediaLinks: widget.sponsor.socialNetwork,
                    ),
                  )
              ],
            ),
          )
        ])),
      ],
    );
  }
}
