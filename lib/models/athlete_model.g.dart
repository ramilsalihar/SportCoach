// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'athlete_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AthleteModelImpl _$$AthleteModelImplFromJson(Map<String, dynamic> json) =>
    _$AthleteModelImpl(
      index: (json['index'] as num).toInt(),
      imagePath: json['imagePath'] as String,
      name: json['name'] as String,
      age: json['age'] as String,
      weight: json['weight'] as String,
      height: json['height'] as String,
      classes: json['classes'] as String,
      duration: json['duration'] as String,
    );

Map<String, dynamic> _$$AthleteModelImplToJson(_$AthleteModelImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      'imagePath': instance.imagePath,
      'name': instance.name,
      'age': instance.age,
      'weight': instance.weight,
      'height': instance.height,
      'classes': instance.classes,
      'duration': instance.duration,
    };
