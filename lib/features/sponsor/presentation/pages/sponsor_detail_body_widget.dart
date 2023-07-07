import 'package:fiura_ecosystem/core/entities/sponsor_entity/sponsor_entity.dart';
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
    return Container();
  }
}
