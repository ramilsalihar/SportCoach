// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RatingModelImpl _$$RatingModelImplFromJson(Map<String, dynamic> json) =>
    _$RatingModelImpl(
      index: (json['index'] as num).toInt(),
      name: json['name'] as String,
      rating: (json['rating'] as num).toInt(),
    );

Map<String, dynamic> _$$RatingModelImplToJson(_$RatingModelImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      'name': instance.name,
      'rating': instance.rating,
    };
