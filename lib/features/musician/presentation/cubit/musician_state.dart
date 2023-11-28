import 'dart:io';
import 'package:fiura/core/entities/musician_entity/musician_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'musician_state.freezed.dart';

@freezed
abstract class MusicianState with _$MusicianState {
  const factory MusicianState.initial() = Initial;
  const factory MusicianState.loading() = Loading;
  const factory MusicianState.error(String message) = Error;
  const factory MusicianState.success() = Success;
  const factory MusicianState.pickedImage(File image) = PickedImage;
  const factory MusicianState.chargedImage(File image, String name) =
      ChargedImage;
  const factory MusicianState.loadMusician(MusicianEntity2 artist) =
      LoadMusician;
  const factory MusicianState.loadMusicianList(
      List<MusicianEntity2> musicians) = LoadMusicianList;
}
