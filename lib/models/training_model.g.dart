// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'training_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrainingModelImpl _$$TrainingModelImplFromJson(Map<String, dynamic> json) =>
    _$TrainingModelImpl(
      imagePath: json['imagePath'] as String,
      name: json['name'] as String,
      repetition: (json['repetition'] as num).toInt(),
      approaches: (json['approaches'] as num).toInt(),
      exName: json['exName'] as String,
      exRepetitions: (json['exRepetitions'] as num).toInt(),
      exApproaches: (json['exApproaches'] as num).toInt(),
      exWeight: (json['exWeight'] as num).toInt(),
    );

Map<String, dynamic> _$$TrainingModelImplToJson(_$TrainingModelImpl instance) =>
    <String, dynamic>{
      'imagePath': instance.imagePath,
      'name': instance.name,
      'repetition': instance.repetition,
      'approaches': instance.approaches,
      'exName': instance.exName,
      'exRepetitions': instance.exRepetitions,
      'exApproaches': instance.exApproaches,
      'exWeight': instance.exWeight,
    };
