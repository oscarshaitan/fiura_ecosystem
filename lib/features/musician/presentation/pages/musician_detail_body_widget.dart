import 'package:fiura/core/entities/musician_entity/musician_entity.dart';
import 'package:fiura/features/musician/presentation/pages/musician_social_network_widget.dart';
import 'package:fiura/features/widgets/image_app_bar_widget.dart';
import 'package:flutter/material.dart';

class MusicianDetailBodyWidget extends StatefulWidget {
  const MusicianDetailBodyWidget({super.key, required this.musician});

  final MusicianEntity musician;

  @override
  State<MusicianDetailBodyWidget> createState() =>
      _MusicianDetailBodyWidgetState();
}

class _MusicianDetailBodyWidgetState extends State<MusicianDetailBodyWidget> {
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
    return CustomScrollView(
      controller: _scrollController,
      slivers: [
        ImageAppBarWidget(
          type: "Jurado",
          urlImage: widget.musician.urlPhoto,
          artistName: widget.musician.name,
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
                      Text(widget.musician.about),
                      const SizedBox(height: 30.0),
                      if (widget.musician.socialNetwork.isNotEmpty)
                        Align(
                          alignment: Alignment.center,
                          child: MusicianSocialNetworkWidget(
                              socialMediaLinks: widget.musician.socialNetwork),
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
