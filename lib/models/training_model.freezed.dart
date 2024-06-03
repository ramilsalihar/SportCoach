// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'training_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TrainingModel _$TrainingModelFromJson(Map<String, dynamic> json) {
  return _TrainingModel.fromJson(json);
}

/// @nodoc
mixin _$TrainingModel {
  String get imagePath => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get repetition => throw _privateConstructorUsedError;
  int get approaches => throw _privateConstructorUsedError;
  String get exName => throw _privateConstructorUsedError;
  int get exRepetitions => throw _privateConstructorUsedError;
  int get exApproaches => throw _privateConstructorUsedError;
  int get exWeight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrainingModelCopyWith<TrainingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainingModelCopyWith<$Res> {
  factory $TrainingModelCopyWith(
          TrainingModel value, $Res Function(TrainingModel) then) =
      _$TrainingModelCopyWithImpl<$Res, TrainingModel>;
  @useResult
  $Res call(
      {String imagePath,
      String name,
      int repetition,
      int approaches,
      String exName,
      int exRepetitions,
      int exApproaches,
      int exWeight});
}

/// @nodoc
class _$TrainingModelCopyWithImpl<$Res, $Val extends TrainingModel>
    implements $TrainingModelCopyWith<$Res> {
  _$TrainingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
    Object? name = null,
    Object? repetition = null,
    Object? approaches = null,
    Object? exName = null,
    Object? exRepetitions = null,
    Object? exApproaches = null,
    Object? exWeight = null,
  }) {
    return _then(_value.copyWith(
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      repetition: null == repetition
          ? _value.repetition
          : repetition // ignore: cast_nullable_to_non_nullable
              as int,
      approaches: null == approaches
          ? _value.approaches
          : approaches // ignore: cast_nullable_to_non_nullable
              as int,
      exName: null == exName
          ? _value.exName
          : exName // ignore: cast_nullable_to_non_nullable
              as String,
      exRepetitions: null == exRepetitions
          ? _value.exRepetitions
          : exRepetitions // ignore: cast_nullable_to_non_nullable
              as int,
      exApproaches: null == exApproaches
          ? _value.exApproaches
          : exApproaches // ignore: cast_nullable_to_non_nullable
              as int,
      exWeight: null == exWeight
          ? _value.exWeight
          : exWeight // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrainingModelImplCopyWith<$Res>
    implements $TrainingModelCopyWith<$Res> {
  factory _$$TrainingModelImplCopyWith(
          _$TrainingModelImpl value, $Res Function(_$TrainingModelImpl) then) =
      __$$TrainingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String imagePath,
      String name,
      int repetition,
      int approaches,
      String exName,
      int exRepetitions,
      int exApproaches,
      int exWeight});
}

/// @nodoc
class __$$TrainingModelImplCopyWithImpl<$Res>
    extends _$TrainingModelCopyWithImpl<$Res, _$TrainingModelImpl>
    implements _$$TrainingModelImplCopyWith<$Res> {
  __$$TrainingModelImplCopyWithImpl(
      _$TrainingModelImpl _value, $Res Function(_$TrainingModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
    Object? name = null,
    Object? repetition = null,
    Object? approaches = null,
    Object? exName = null,
    Object? exRepetitions = null,
    Object? exApproaches = null,
    Object? exWeight = null,
  }) {
    return _then(_$TrainingModelImpl(
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      repetition: null == repetition
          ? _value.repetition
          : repetition // ignore: cast_nullable_to_non_nullable
              as int,
      approaches: null == approaches
          ? _value.approaches
          : approaches // ignore: cast_nullable_to_non_nullable
              as int,
      exName: null == exName
          ? _value.exName
          : exName // ignore: cast_nullable_to_non_nullable
              as String,
      exRepetitions: null == exRepetitions
          ? _value.exRepetitions
          : exRepetitions // ignore: cast_nullable_to_non_nullable
              as int,
      exApproaches: null == exApproaches
          ? _value.exApproaches
          : exApproaches // ignore: cast_nullable_to_non_nullable
              as int,
      exWeight: null == exWeight
          ? _value.exWeight
          : exWeight // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrainingModelImpl implements _TrainingModel {
  const _$TrainingModelImpl(
      {required this.imagePath,
      required this.name,
      required this.repetition,
      required this.approaches,
      required this.exName,
      required this.exRepetitions,
      required this.exApproaches,
      required this.exWeight});

  factory _$TrainingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrainingModelImplFromJson(json);

  @override
  final String imagePath;
  @override
  final String name;
  @override
  final int repetition;
  @override
  final int approaches;
  @override
  final String exName;
  @override
  final int exRepetitions;
  @override
  final int exApproaches;
  @override
  final int exWeight;

  @override
  String toString() {
    return 'TrainingModel(imagePath: $imagePath, name: $name, repetition: $repetition, approaches: $approaches, exName: $exName, exRepetitions: $exRepetitions, exApproaches: $exApproaches, exWeight: $exWeight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainingModelImpl &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.repetition, repetition) ||
                other.repetition == repetition) &&
            (identical(other.approaches, approaches) ||
                other.approaches == approaches) &&
            (identical(other.exName, exName) || other.exName == exName) &&
            (identical(other.exRepetitions, exRepetitions) ||
                other.exRepetitions == exRepetitions) &&
            (identical(other.exApproaches, exApproaches) ||
                other.exApproaches == exApproaches) &&
            (identical(other.exWeight, exWeight) ||
                other.exWeight == exWeight));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imagePath, name, repetition,
      approaches, exName, exRepetitions, exApproaches, exWeight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrainingModelImplCopyWith<_$TrainingModelImpl> get copyWith =>
      __$$TrainingModelImplCopyWithImpl<_$TrainingModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrainingModelImplToJson(
      this,
    );
  }
}

abstract class _TrainingModel implements TrainingModel {
  const factory _TrainingModel(
      {required final String imagePath,
      required final String name,
      required final int repetition,
      required final int approaches,
      required final String exName,
      required final int exRepetitions,
      required final int exApproaches,
      required final int exWeight}) = _$TrainingModelImpl;

  factory _TrainingModel.fromJson(Map<String, dynamic> json) =
      _$TrainingModelImpl.fromJson;

  @override
  String get imagePath;
  @override
  String get name;
  @override
  int get repetition;
  @override
  int get approaches;
  @override
  String get exName;
  @override
  int get exRepetitions;
  @override
  int get exApproaches;
  @override
  int get exWeight;
  @override
  @JsonKey(ignore: true)
  _$$TrainingModelImplCopyWith<_$TrainingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
