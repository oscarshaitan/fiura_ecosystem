import 'package:auto_route/auto_route.dart';
import 'package:fiura_ecosystem/dependencies.dart';
import 'package:fiura_ecosystem/features/sponsor/presentation/cubit/sponsor_state.dart';
import 'package:fiura_ecosystem/features/sponsor/presentation/pages/sponsor_detail_body_widget.dart';
import 'package:fiura_ecosystem/features/widgets/on_load_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/sponsor_cubit.dart';

class SponsorDetailScreen extends StatefulWidget {
  const SponsorDetailScreen({
    super.key,
    @PathParam() required this.sponsorId,
  });

  final String sponsorId;

  @override
  State<SponsorDetailScreen> createState() => _SponsorDetailScreenState();
}

class _SponsorDetailScreenState extends State<SponsorDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => getIt<SponsorCubit>()..getSponsor(widget.sponsorId),
        child: BlocBuilder<SponsorCubit, SponsorState>(
          builder: (context, state) {
            return state.maybeWhen(
                orElse: () => const Center(
                      child: Text(
                          "Ups! Ocurrió un error mientras cargabamos este patrocinador"),
                    ),
                loading: () => const Center(child: OnLoadMessage()),
                error: (message) => Center(child: Text(message)),
                loadSponsor: (sponsor) {
                  return FutureBuilder<void>(
                      future: precacheImage(
                          NetworkImage(sponsor.urlPhoto), context),
                      builder:
                          (BuildContext context, AsyncSnapshot<void> snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          if (snapshot.hasError) {
                            return Center(
                              child: Text(
                                  "Ups! Ocurrió un error mientras cargabamos este patrocinador: ${snapshot.error}"),
                            );
                          } else {
                            return SponsorDetailBodyWidget(sponsor: sponsor);
                          }
                        } else {
                          return const Center(child: OnLoadMessage());
                        }
                      });
                });
          },
        ),
      ),
    );
  }
}
