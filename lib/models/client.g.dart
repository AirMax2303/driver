// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClientModel _$$_ClientModelFromJson(Map<String, dynamic> json) =>
    _$_ClientModel(
      id: json['id'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      firstName: json['firstName'] as String? ?? '',
      lastName: json['lastName'] as String? ?? '',
      password: json['password'] as String? ?? '',
    );

Map<String, dynamic> _$$_ClientModelToJson(_$_ClientModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phone': instance.phone,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'password': instance.password,
    };
