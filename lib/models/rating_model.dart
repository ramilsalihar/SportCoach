import 'package:freezed_annotation/freezed_annotation.dart';

part 'rating_model.freezed.dart';
part 'rating_model.g.dart';

@freezed
class RatingModel with _$RatingModel {
  const factory RatingModel({
    required int index,
    required String name,
    required int rating,
  }) = _RatingModel;

  factory RatingModel.empty() => const RatingModel(
        index: 0,
        name: '',
        rating: 0,
      );

  factory RatingModel.fromJson(Map<String, dynamic> json) =>
      _$RatingModelFromJson(json);
}
