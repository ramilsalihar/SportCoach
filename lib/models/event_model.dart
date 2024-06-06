import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sport_coach/models/athlete_model.dart';

part 'event_model.freezed.dart';
part 'event_model.g.dart';

@freezed
class EventModel with _$EventModel {
  const factory EventModel({
    required String date,
    required List<EventDetail> events,
  }) = _EventModel;

  factory EventModel.empty() => const EventModel(
        date: '',
        events: const <EventDetail>[],
      );

  factory EventModel.fromJson(Map<String, dynamic> json) =>
      _$EventModelFromJson(json);
}

@freezed
class EventDetail with _$EventDetail {
  const factory EventDetail({
    required int index,
    required String name,
    required String time,
    required String date,
    required String location,
    required String description,
    required AthleteModel athlete,
  }) = _EventDetail;

  factory EventDetail.empty() => EventDetail(
        index: 0,
        name: '',
        time: '',
        date: '',
        location: '',
        description: '',
        athlete: AthleteModel.empty(),
      );

  factory EventDetail.fromJson(Map<String, dynamic> json) =>
      _$EventDetailFromJson(json);
}
