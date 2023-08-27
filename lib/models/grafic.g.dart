// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grafic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GraficModel _$$_GraficModelFromJson(Map<String, dynamic> json) =>
    _$_GraficModel(
      clientid: json['clientid'] as String? ?? '',
      gdayweek: json['gdayweek'] as String? ?? '1',
      name: json['name'] as String? ?? '',
      gfrom: json['gfrom'] as String? ?? '',
      gto: json['gto'] as String? ?? '',
      gmonth: json['gmonth'] as String? ?? '',
      gtime: json['gtime'] as String? ?? '',
    );

Map<String, dynamic> _$$_GraficModelToJson(_$_GraficModel instance) =>
    <String, dynamic>{
      'clientid': instance.clientid,
      'gdayweek': instance.gdayweek,
      'name': instance.name,
      'gfrom': instance.gfrom,
      'gto': instance.gto,
      'gmonth': instance.gmonth,
      'gtime': instance.gtime,
    };
