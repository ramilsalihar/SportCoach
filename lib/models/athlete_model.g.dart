// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'athlete_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AthleteModelImpl _$$AthleteModelImplFromJson(Map<String, dynamic> json) =>
    _$AthleteModelImpl(
      imagePath: json['imagePath'] as String,
      name: json['name'] as String,
      age: (json['age'] as num).toInt(),
      weight: json['weight'] as String,
      height: json['height'] as String,
      classes: (json['classes'] as num).toInt(),
      duration: (json['duration'] as num).toInt(),
    );

Map<String, dynamic> _$$AthleteModelImplToJson(_$AthleteModelImpl instance) =>
    <String, dynamic>{
      'imagePath': instance.imagePath,
      'name': instance.name,
      'age': instance.age,
      'weight': instance.weight,
      'height': instance.height,
      'classes': instance.classes,
      'duration': instance.duration,
    };
