import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_model.freezed.dart';
part 'event_model.g.dart';

@freezed
class EventModel with _$EventModel {
  const factory EventModel({
    required String name,
    required DateTime dateTime,
    required String location,
    required String description,
    required String athlete,
  }) = _EventModel;

  factory EventModel.fromJson(Map<String, dynamic> json) =>
      _$EventModelFromJson(json);
}
