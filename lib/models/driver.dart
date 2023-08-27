import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver.freezed.dart';

part 'driver.g.dart';

@freezed
class DriverModel with _$DriverModel {
  const factory DriverModel({
    @Default('') String id,
    @Default('') String phone,
    @Default('') String password,
    @Default('') String town,
    @Default('') String refcode,
    @Default('') String country,
    @Default('') String surname,
    @Default('') String name,
    @Default('') String numberDL,
    @Default('') String dateDL,
    @Default('') String carbrand,
    @Default('') String carmodel,
    @Default('') String carcolor,
    @Default('') String caryear,
    @Default('') String carNP,
    @Default('') String carCTC,
    @Default('') String carType,
    @Default('') String description,
    @Default('') String age,
    @Default('') String image,
    @Default('') String video,
    @Default('') String question,
    @Default('') String question0,
    @Default('') String question1,
    @Default('') String question2,
    @Default('') String question3,
    @Default('') String question4,
    @Default('') String question5,
    @Default('') String question6,
    @Default('') String question7,
  }) = _DriverModel;

  factory DriverModel.fromJson(Map<String, Object?> json) => _$DriverModelFromJson(json);
}

/*
CREATE TABLE drivers (
id text NOT NULL,
phone text NOT NULL,
password text NOT NULL,
town text NOT NULL,
refcode text NOT NULL,
country text NOT NULL,
surname text NOT NULL,
name text NOT NULL,
numberDL text NOT NULL,
dateDL text NOT NULL,
carbrand text NOT NULL,
carmodel text NOT NULL,
carcolor text NOT NULL,
caryear text NOT NULL,
carNP text NOT NULL,
carCTC text NOT NULL,
carType text NOT NULL,
description text NOT NULL,
age text NOT NULL,
image text NOT NULL,
video text NOT NULL,
question text NOT NULL,
question0 text NOT NULL,
question1 text NOT NULL,
question2 text NOT NULL,
question3 text NOT NULL,
question4 text NOT NULL,
question5 text NOT NULL,
question6 text NOT NULL,
question7 text NOT NULL,
);
 */
