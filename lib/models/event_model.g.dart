// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventModelImpl _$$EventModelImplFromJson(Map<String, dynamic> json) =>
    _$EventModelImpl(
      date: json['date'] as String,
      events: (json['events'] as List<dynamic>)
          .map((e) => EventDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$EventModelImplToJson(_$EventModelImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'events': instance.events,
    };

_$EventDetailImpl _$$EventDetailImplFromJson(Map<String, dynamic> json) =>
    _$EventDetailImpl(
      index: (json['index'] as num).toInt(),
      name: json['name'] as String,
      time: json['time'] as String,
      date: json['date'] as String,
      location: json['location'] as String,
      description: json['description'] as String,
      athlete: AthleteModel.fromJson(json['athlete'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EventDetailImplToJson(_$EventDetailImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      'name': instance.name,
      'time': instance.time,
      'date': instance.date,
      'location': instance.location,
      'description': instance.description,
      'athlete': instance.athlete,
    };
