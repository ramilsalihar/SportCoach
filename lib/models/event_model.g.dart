// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventModelImpl _$$EventModelImplFromJson(Map<String, dynamic> json) =>
    _$EventModelImpl(
      index: (json['index'] as num).toInt(),
      name: json['name'] as String,
      dateTime: json['dateTime'] as String,
      location: json['location'] as String,
      description: json['description'] as String,
      athlete: json['athlete'] as String,
    );

Map<String, dynamic> _$$EventModelImplToJson(_$EventModelImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      'name': instance.name,
      'dateTime': instance.dateTime,
      'location': instance.location,
      'description': instance.description,
      'athlete': instance.athlete,
    };
