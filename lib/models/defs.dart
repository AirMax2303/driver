import 'package:freezed_annotation/freezed_annotation.dart';

part 'defs.freezed.dart';

part 'defs.g.dart';

@freezed
class DefsModel with _$DefsModel {
  const factory DefsModel({
    @Default('') String id,
    @Default('') String pin,
  }) = _DefsModel;

  factory DefsModel.fromJson(Map<String, Object?> json) => _$DefsModelFromJson(json);
}
