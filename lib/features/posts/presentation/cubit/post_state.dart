import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/entities/post_entity/post_entity.dart';
part 'post_state.freezed.dart';

@freezed
abstract class PostState with _$PostState {
  const factory PostState.initial() = Initial;
  const factory PostState.loading() = Loading;
  const factory PostState.error(String message) = Error;
  const factory PostState.success() = Success;
  const factory PostState.loadData(List<PostEntity> posts) = LoadData;
}
