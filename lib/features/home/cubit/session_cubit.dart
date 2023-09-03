import 'package:fiura_ecosystem/core/entities/user/user_entity.dart';
import 'package:fiura_ecosystem/features/home/repository/user_respository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_state.dart';

part 'session_cubit.freezed.dart';

class SessionCubit extends Cubit<SessionState> {
  final UserRepository _userRepository;

  SessionCubit(this._userRepository) : super(const SessionState.initial()) {
    init();
  }

  init() async {
    try {
      emit(SessionState.userFetched(
          currentUser: await _userRepository.getCurrentUser()));
    } on Exception catch (_) {
      emit(SessionState.error(currentUser: state.currentUser));
    }
  }
}
