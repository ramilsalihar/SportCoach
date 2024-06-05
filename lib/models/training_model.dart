import 'package:freezed_annotation/freezed_annotation.dart';

part 'training_model.freezed.dart';
part 'training_model.g.dart';

@freezed
class TrainingModel with _$TrainingModel {
  const factory TrainingModel({
    required int index,
    required String imagePath,
    required String name,
    required String repetition,
    required String approaches,
    required String exName,
    required String exRepetitions,
    required String exApproaches,
    required String exWeight,
  }) = _TrainingModel;

  factory TrainingModel.empty() => const TrainingModel(
        index: 0,
        imagePath: '',
        name: '',
        repetition: '',
        approaches: '',
        exName: '',
        exRepetitions: '',
        exApproaches: '',
        exWeight: '',
      );

  factory TrainingModel.fromJson(Map<String, dynamic> json) =>
      _$TrainingModelFromJson(json);
}
