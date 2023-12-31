import 'package:freezed_annotation/freezed_annotation.dart';

part 'client.freezed.dart';

part 'client.g.dart';

@freezed
class ClientModel with _$ClientModel {
  const factory ClientModel({
    @Default('') String? id,
    @Default('') String? phone,
    @Default('') String? firstName,
    @Default('') String? lastName,
    @Default('') String? password,
  }) = _ClientModel;

  factory ClientModel.fromJson(Map<String, Object?> json) => _$ClientModelFromJson(json);
}


/*
CREATE TABLE clients (
id text NOT NULL,
phone text NOT NULL,
firstName text NOT NULL,
lastName text NOT NULL,
password text NOT NULL,
);
 */