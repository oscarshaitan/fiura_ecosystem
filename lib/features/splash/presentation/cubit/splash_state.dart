import 'package:freezed_annotation/freezed_annotation.dart';

// part 'splash_cubit.dart';
part 'splash_state.freezed.dart';

@freezed
abstract class SplashState with _$SplashState {
  const factory SplashState.logedUser() = LogedUser;
  const factory SplashState.none() = None;
}
