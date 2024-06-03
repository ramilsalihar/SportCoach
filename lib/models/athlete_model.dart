import 'package:freezed_annotation/freezed_annotation.dart';

part 'athlete_model.freezed.dart';
part 'athlete_model.g.dart';

@freezed
class AthleteModel with _$AthleteModel {
  const factory AthleteModel({
    required String imagePath,
    required String name,
    required int age,
    required String weight,
    required String height,
    required int classes,
    required int duration,
  }) = _AthleteModel;

  factory AthleteModel.fromJson(Map<String, dynamic> json) =>
      _$AthleteModelFromJson(json);
}
