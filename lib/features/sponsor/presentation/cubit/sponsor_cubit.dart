import 'package:fiura_ecosystem/features/sponsor/presentation/cubit/sponsor_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/entities/sponsor_entity/sponsor_entity.dart';
import '../../domain/repositories/sponsor_repository.dart';

class SponsorCubit extends Cubit<SponsorState> {
  SponsorCubit(this._sponsorRepository) : super(const Initial());

  final SponsorRepository _sponsorRepository;

  void addSponsor(String name, String about, List<String> socialNetwork) async {
    SponsorEntity sponsor = SponsorEntity(
      name: name,
      about: about,
      socialNetwork: socialNetwork,
      id: '',
    );

    emit(const Loading());
    final result = await _sponsorRepository.addSponsor(sponsor);
    if (result) {
      emit(const Success());
    } else {
      emit(const Error('Error añadiendo nuevo patrocinador'));
    }
  }
}
