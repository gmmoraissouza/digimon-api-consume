// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'digimon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Digimon _$DigimonFromJson(Map<String, dynamic> json) => Digimon(
      name: json['name'] as String,
      img: json['img'] as String,
      level: json['level'] as String,
    );

Map<String, dynamic> _$DigimonToJson(Digimon instance) => <String, dynamic>{
      'name': instance.name,
      'img': instance.img,
      'level': instance.level,
    };
