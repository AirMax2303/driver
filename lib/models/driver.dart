import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver.freezed.dart';

part 'driver.g.dart';

@freezed
class DriverModel with _$DriverModel {
  const factory DriverModel({
    @Default('') String? id,
    @Default('') String? phone,
    @Default('') String? password,
    @Default('') String? town,
    @Default('') String? refcode,
    @Default('') String? country,
    @Default('') String? surname,
    @Default('') String? name,
    @Default('') String? numberDL,
    @Default('') String? dateDL,
    @Default('') String? carbrand,
    @Default('') String? carmodel,
    @Default('') String? carcolor,
    @Default('') String? caryear,
    @Default('') String? carNP,
    @Default('') String? carCTC,
    @Default('') String? carType,
    @Default('') String? description,
    @Default('') String? age,
    @Default('') String? image,
    @Default('') String? video,
    @Default('') String? question,
    @Default('') String? question0,
    @Default('') String? question1,
    @Default('') String? question2,
    @Default('') String? question3,
    @Default('') String? question4,
    @Default('') String? question5,
    @Default('') String? question6,
    @Default('') String? question7,
  }) = _DriverModel;

  factory DriverModel.fromJson(Map<String, Object?> json) => _$DriverModelFromJson(json);
}

/*

class DriverModel _$DriverModel {
  const factory DriverModel(
 String? id,
 String? phone,
 String? password,
 String? town;
 String? refcode;
 String? country = 'Россия';
 String? surname = 'Иванов';
 String? name = 'Иван';
 String? numberDL;
 String? dateDL;
 String? carbrand = 'Лексус';
 String? carmodel = 'NX300';
 String? carcolor = 'Белый';
 String? caryear = '2016';
 String? carNP = 'А 007 АА | 197';
 String? carCTC = '77  УЕ 000000';
 String? carType = 'Эконом';
 String? description;
 String? age;
 String? image;
 String? video;
 String? question;
 String? question0;
 String? question1;
 String? question2;
 String? question3;
 String? question4;
 String? question5;
 String? question6;
 String? question7;
  ) = _DriverModel;
  factory DriverModel.fromJson(Map<String ?, dynamic> json) => _$DriverModelFromJson(json);
//  Map<String ?, dynamic> toJson() => _$DriverToJson(this);
}
 */
