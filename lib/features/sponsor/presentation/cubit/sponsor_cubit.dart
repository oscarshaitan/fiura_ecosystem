import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:fiura_ecosystem/features/sponsor/presentation/cubit/sponsor_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/entities/sponsor_entity/sponsor_entity.dart';
import '../../domain/repositories/sponsor_repository.dart';

class SponsorCubit extends Cubit<SponsorState> {
  SponsorCubit(this._sponsorRepository) : super(const Initial());

  final SponsorRepository _sponsorRepository;

  void addSponsor(String name, String about, List<String> socialNetwork,
      File? image) async {
    String urlPhoto = 'Sponsors/${path.basename(image!.path)}';

    SponsorEntity sponsor = SponsorEntity(
      name: name,
      about: about,
      socialNetwork: socialNetwork,
      urlPhoto: urlPhoto,
      id: '',
    );

    emit(const Loading());
    final result = await _sponsorRepository.addSponsor(sponsor, image);
    if (result) {
      emit(const Success());
    } else {
      emit(const Error('Error añadiendo nuevo patrocinador'));
    }
  }

  void getSponsors() async {
    emit(const Loading());

    try {
      final result = await _sponsorRepository.getSponsors();
      emit(LoadData(result));
    } catch (e) {
      emit(Error('Error cargando patrocinadores: ${e.toString()}'));
    }
  }

  void getSponsor(String sponsorId) async {
    emit(const Loading());

    try {
      final result = await _sponsorRepository.getSponsor(sponsorId);
      emit(LoadSponsor(result));
    } catch (e) {
      emit(Error('Error cargando patrocinador: ${e.toString()}'));
    }
  }
}
