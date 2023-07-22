import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/entities/sponsor_entity/sponsor_entity.dart';
part 'sponsor_state.freezed.dart';

@freezed
abstract class SponsorState with _$SponsorState {
  const factory SponsorState.initial() = Initial;
  const factory SponsorState.loading() = Loading;
  const factory SponsorState.error(String message) = Error;
  const factory SponsorState.success() = Success;
  const factory SponsorState.loadData(List<SponsorEntity> sponsorList) =
      LoadData;
  const factory SponsorState.loadSponsor(SponsorEntity sponsor) = LoadSponsor;
  const factory SponsorState.pickedImage(File image) = PickedImage;
}
