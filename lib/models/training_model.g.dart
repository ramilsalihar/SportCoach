// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'training_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrainingModelImpl _$$TrainingModelImplFromJson(Map<String, dynamic> json) =>
    _$TrainingModelImpl(
      index: (json['index'] as num).toInt(),
      imagePath: json['imagePath'] as String,
      name: json['name'] as String,
      repetition: json['repetition'] as String,
      approaches: json['approaches'] as String,
      exName: json['exName'] as String,
      exRepetitions: json['exRepetitions'] as String,
      exApproaches: json['exApproaches'] as String,
      exWeight: json['exWeight'] as String,
    );

Map<String, dynamic> _$$TrainingModelImplToJson(_$TrainingModelImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      'imagePath': instance.imagePath,
      'name': instance.name,
      'repetition': instance.repetition,
      'approaches': instance.approaches,
      'exName': instance.exName,
      'exRepetitions': instance.exRepetitions,
      'exApproaches': instance.exApproaches,
      'exWeight': instance.exWeight,
    };
