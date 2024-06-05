import 'package:freezed_annotation/freezed_annotation.dart';

part 'athlete_model.freezed.dart';
part 'athlete_model.g.dart';

@freezed
class AthleteModel with _$AthleteModel {
  const factory AthleteModel({
    required int index,
    required String imagePath,
    required String name,
    required String age,
    required String weight,
    required String height,
    required String classes,
    required String duration,
  }) = _AthleteModel;

  factory AthleteModel.empty() => const AthleteModel(
        index: 0,
        imagePath: '',
        name: '',
        age: '',
        weight: '',
        height: '',
        classes: '',
        duration: '',
      );

  factory AthleteModel.fromJson(Map<String, dynamic> json) =>
      _$AthleteModelFromJson(json);
}
