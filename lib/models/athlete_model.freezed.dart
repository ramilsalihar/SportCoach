// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'athlete_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AthleteModel _$AthleteModelFromJson(Map<String, dynamic> json) {
  return _AthleteModel.fromJson(json);
}

/// @nodoc
mixin _$AthleteModel {
  String get imagePath => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  String get weight => throw _privateConstructorUsedError;
  String get height => throw _privateConstructorUsedError;
  int get classes => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AthleteModelCopyWith<AthleteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AthleteModelCopyWith<$Res> {
  factory $AthleteModelCopyWith(
          AthleteModel value, $Res Function(AthleteModel) then) =
      _$AthleteModelCopyWithImpl<$Res, AthleteModel>;
  @useResult
  $Res call(
      {String imagePath,
      String name,
      int age,
      String weight,
      String height,
      int classes,
      int duration});
}

/// @nodoc
class _$AthleteModelCopyWithImpl<$Res, $Val extends AthleteModel>
    implements $AthleteModelCopyWith<$Res> {
  _$AthleteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
    Object? name = null,
    Object? age = null,
    Object? weight = null,
    Object? height = null,
    Object? classes = null,
    Object? duration = null,
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
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String,
      classes: null == classes
          ? _value.classes
          : classes // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AthleteModelImplCopyWith<$Res>
    implements $AthleteModelCopyWith<$Res> {
  factory _$$AthleteModelImplCopyWith(
          _$AthleteModelImpl value, $Res Function(_$AthleteModelImpl) then) =
      __$$AthleteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String imagePath,
      String name,
      int age,
      String weight,
      String height,
      int classes,
      int duration});
}

/// @nodoc
class __$$AthleteModelImplCopyWithImpl<$Res>
    extends _$AthleteModelCopyWithImpl<$Res, _$AthleteModelImpl>
    implements _$$AthleteModelImplCopyWith<$Res> {
  __$$AthleteModelImplCopyWithImpl(
      _$AthleteModelImpl _value, $Res Function(_$AthleteModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
    Object? name = null,
    Object? age = null,
    Object? weight = null,
    Object? height = null,
    Object? classes = null,
    Object? duration = null,
  }) {
    return _then(_$AthleteModelImpl(
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String,
      classes: null == classes
          ? _value.classes
          : classes // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AthleteModelImpl implements _AthleteModel {
  const _$AthleteModelImpl(
      {required this.imagePath,
      required this.name,
      required this.age,
      required this.weight,
      required this.height,
      required this.classes,
      required this.duration});

  factory _$AthleteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AthleteModelImplFromJson(json);

  @override
  final String imagePath;
  @override
  final String name;
  @override
  final int age;
  @override
  final String weight;
  @override
  final String height;
  @override
  final int classes;
  @override
  final int duration;

  @override
  String toString() {
    return 'AthleteModel(imagePath: $imagePath, name: $name, age: $age, weight: $weight, height: $height, classes: $classes, duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AthleteModelImpl &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.classes, classes) || other.classes == classes) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, imagePath, name, age, weight, height, classes, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AthleteModelImplCopyWith<_$AthleteModelImpl> get copyWith =>
      __$$AthleteModelImplCopyWithImpl<_$AthleteModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AthleteModelImplToJson(
      this,
    );
  }
}

abstract class _AthleteModel implements AthleteModel {
  const factory _AthleteModel(
      {required final String imagePath,
      required final String name,
      required final int age,
      required final String weight,
      required final String height,
      required final int classes,
      required final int duration}) = _$AthleteModelImpl;

  factory _AthleteModel.fromJson(Map<String, dynamic> json) =
      _$AthleteModelImpl.fromJson;

  @override
  String get imagePath;
  @override
  String get name;
  @override
  int get age;
  @override
  String get weight;
  @override
  String get height;
  @override
  int get classes;
  @override
  int get duration;
  @override
  @JsonKey(ignore: true)
  _$$AthleteModelImplCopyWith<_$AthleteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
