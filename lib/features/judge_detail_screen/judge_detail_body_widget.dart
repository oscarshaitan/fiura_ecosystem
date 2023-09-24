import 'package:fiura/core/entities/judge_entity/judge_entity.dart';
import 'package:fiura/features/judge_detail_screen/judge_social_network_widget.dart';
import 'package:fiura/features/widgets/image_app_bar_widget.dart';
import 'package:flutter/material.dart';

class JudgeDetailBodyWidget extends StatefulWidget {
  const JudgeDetailBodyWidget({super.key, required this.judge});

  final JudgeEntity judge;

  @override
  State<JudgeDetailBodyWidget> createState() => _JudgeDetailBodyWidgetState();
}

class _JudgeDetailBodyWidgetState extends State<JudgeDetailBodyWidget> {
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
          urlImage: widget.judge.urlPhoto,
          artistName: widget.judge.name,
          isExpanded: _isExpanded,
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Container(
                margin: const EdgeInsets.all(20.0),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    "Descripción",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const SizedBox(height: 15.0),
                  Text(widget.judge.about),
                  const SizedBox(height: 30.0),
                  if (widget.judge.socialNetwork.isNotEmpty)
                    Align(
                      alignment: Alignment.center,
                      child: JudgeSocialNetworkWidget(socialMediaLinks: widget.judge.socialNetwork),
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
