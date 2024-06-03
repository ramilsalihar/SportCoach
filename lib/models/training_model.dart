import 'package:freezed_annotation/freezed_annotation.dart';

part 'training_model.freezed.dart';
part 'training_model.g.dart';

@freezed
class TrainingModel with _$TrainingModel {
  const factory TrainingModel({
    required String imagePath,
    required String name,
    required int repetition,
    required int approaches,
    required String exName,
    required int exRepetitions,
    required int exApproaches,
    required int exWeight,
  }) = _TrainingModel;

  factory TrainingModel.fromJson(Map<String, dynamic> json) =>
      _$TrainingModelFromJson(json);
}
