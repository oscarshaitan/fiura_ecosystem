import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/entities/artist_entity/artist_entity.dart';
part 'artist_state.freezed.dart';

@freezed
abstract class ArtistState with _$ArtistState {
  const factory ArtistState.initial() = Initial;
  const factory ArtistState.loading() = Loading;
  const factory ArtistState.error(String message) = Error;
  const factory ArtistState.success() = Success;
  const factory ArtistState.loadData(List<ArtistEntity> artists) = LoadData;
}
