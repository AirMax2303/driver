import 'package:freezed_annotation/freezed_annotation.dart';
part 'person.freezed.dart';
part 'person.g.dart';

@freezed
class PersonModel with _$PersonModel {
  factory PersonModel({
    String? firstName,
    String? lastName,
    int? age,
  }) = _PersonModel;

  factory PersonModel.fromJson(Map<String, Object?> json) => _$PersonModelFromJson(json);
}

final PersonModel personModel = PersonModel(firstName: '', lastName: '', age: 40);