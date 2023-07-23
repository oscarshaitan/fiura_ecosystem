import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/repositories/admin_repository.dart';
import 'admin_state.dart';

class AdminCubit extends Cubit<AdminState> {
  AdminCubit(this._adminRepository) : super(const Initial());

  final AdminRepository _adminRepository;

  void addAdmin(String uid) async {
    emit(const Loading());
    try {
      await _adminRepository.addAdmin(uid);
      emit(const Success());
    } catch (e) {
      emit(Error(e.toString()));
    }
  }

  void deleteAdmin(String uid) async {
    emit(const Loading());
    try {
      await _adminRepository.deleteAdmin(uid);
      emit(const Success());
    } catch (e) {
      emit(Error(e.toString()));
    }
  }

  void getAdmins() async {
    emit(const Loading());
    try {
      final result = await _adminRepository.getAdmins();
      emit(LoadData(result));
    } catch (e) {
      emit(Error(e.toString()));
    }
  }
}
