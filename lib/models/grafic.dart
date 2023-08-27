import 'package:freezed_annotation/freezed_annotation.dart';

part 'grafic.freezed.dart';

part 'grafic.g.dart';

@freezed
class GraficModel with _$GraficModel {
  const factory GraficModel({
    @Default('') String clientid,
    @Default('1') String gdayweek,
    @Default('') String name,
    @Default('') String gfrom,
    @Default('') String gto,
    @Default('') String gmonth,
    @Default('') String gtime,
  }) = _GraficModel;

  factory GraficModel.fromJson(Map<String, Object?> json) => _$GraficModelFromJson(json);
}

/*
CREATE TABLE grafics (
clientid text NOT NULL,
dayweek text NOT NULL,
name text NOT NULL,
from text NOT NULL,
to text NOT NULL,
month text NOT NULL,
time text NOT NULL,
);
 */
