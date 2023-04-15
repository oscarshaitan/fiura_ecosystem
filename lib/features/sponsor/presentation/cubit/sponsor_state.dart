import 'package:freezed_annotation/freezed_annotation.dart';
part 'sponsor_state.freezed.dart';

@freezed
abstract class SponsorState with _$SponsorState {
  const factory SponsorState.initial() = Initial;
  const factory SponsorState.loading() = Loading;
  const factory SponsorState.error(String message) = Error;
  const factory SponsorState.success() = Success;
}
