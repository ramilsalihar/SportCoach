// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EventModel _$EventModelFromJson(Map<String, dynamic> json) {
  return _EventModel.fromJson(json);
}

/// @nodoc
mixin _$EventModel {
  String get date => throw _privateConstructorUsedError;
  List<EventDetail> get events => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventModelCopyWith<EventModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventModelCopyWith<$Res> {
  factory $EventModelCopyWith(
          EventModel value, $Res Function(EventModel) then) =
      _$EventModelCopyWithImpl<$Res, EventModel>;
  @useResult
  $Res call({String date, List<EventDetail> events});
}

/// @nodoc
class _$EventModelCopyWithImpl<$Res, $Val extends EventModel>
    implements $EventModelCopyWith<$Res> {
  _$EventModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? events = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventDetail>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventModelImplCopyWith<$Res>
    implements $EventModelCopyWith<$Res> {
  factory _$$EventModelImplCopyWith(
          _$EventModelImpl value, $Res Function(_$EventModelImpl) then) =
      __$$EventModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, List<EventDetail> events});
}

/// @nodoc
class __$$EventModelImplCopyWithImpl<$Res>
    extends _$EventModelCopyWithImpl<$Res, _$EventModelImpl>
    implements _$$EventModelImplCopyWith<$Res> {
  __$$EventModelImplCopyWithImpl(
      _$EventModelImpl _value, $Res Function(_$EventModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? events = null,
  }) {
    return _then(_$EventModelImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventDetail>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventModelImpl implements _EventModel {
  const _$EventModelImpl(
      {required this.date, required final List<EventDetail> events})
      : _events = events;

  factory _$EventModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventModelImplFromJson(json);

  @override
  final String date;
  final List<EventDetail> _events;
  @override
  List<EventDetail> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  String toString() {
    return 'EventModel(date: $date, events: $events)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventModelImpl &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, date, const DeepCollectionEquality().hash(_events));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventModelImplCopyWith<_$EventModelImpl> get copyWith =>
      __$$EventModelImplCopyWithImpl<_$EventModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventModelImplToJson(
      this,
    );
  }
}

abstract class _EventModel implements EventModel {
  const factory _EventModel(
      {required final String date,
      required final List<EventDetail> events}) = _$EventModelImpl;

  factory _EventModel.fromJson(Map<String, dynamic> json) =
      _$EventModelImpl.fromJson;

  @override
  String get date;
  @override
  List<EventDetail> get events;
  @override
  @JsonKey(ignore: true)
  _$$EventModelImplCopyWith<_$EventModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EventDetail _$EventDetailFromJson(Map<String, dynamic> json) {
  return _EventDetail.fromJson(json);
}

/// @nodoc
mixin _$EventDetail {
  int get index => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  AthleteModel get athlete => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventDetailCopyWith<EventDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventDetailCopyWith<$Res> {
  factory $EventDetailCopyWith(
          EventDetail value, $Res Function(EventDetail) then) =
      _$EventDetailCopyWithImpl<$Res, EventDetail>;
  @useResult
  $Res call(
      {int index,
      String name,
      String time,
      String date,
      String location,
      String description,
      AthleteModel athlete});

  $AthleteModelCopyWith<$Res> get athlete;
}

/// @nodoc
class _$EventDetailCopyWithImpl<$Res, $Val extends EventDetail>
    implements $EventDetailCopyWith<$Res> {
  _$EventDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? name = null,
    Object? time = null,
    Object? date = null,
    Object? location = null,
    Object? description = null,
    Object? athlete = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      athlete: null == athlete
          ? _value.athlete
          : athlete // ignore: cast_nullable_to_non_nullable
              as AthleteModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AthleteModelCopyWith<$Res> get athlete {
    return $AthleteModelCopyWith<$Res>(_value.athlete, (value) {
      return _then(_value.copyWith(athlete: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EventDetailImplCopyWith<$Res>
    implements $EventDetailCopyWith<$Res> {
  factory _$$EventDetailImplCopyWith(
          _$EventDetailImpl value, $Res Function(_$EventDetailImpl) then) =
      __$$EventDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int index,
      String name,
      String time,
      String date,
      String location,
      String description,
      AthleteModel athlete});

  @override
  $AthleteModelCopyWith<$Res> get athlete;
}

/// @nodoc
class __$$EventDetailImplCopyWithImpl<$Res>
    extends _$EventDetailCopyWithImpl<$Res, _$EventDetailImpl>
    implements _$$EventDetailImplCopyWith<$Res> {
  __$$EventDetailImplCopyWithImpl(
      _$EventDetailImpl _value, $Res Function(_$EventDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? name = null,
    Object? time = null,
    Object? date = null,
    Object? location = null,
    Object? description = null,
    Object? athlete = null,
  }) {
    return _then(_$EventDetailImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      athlete: null == athlete
          ? _value.athlete
          : athlete // ignore: cast_nullable_to_non_nullable
              as AthleteModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventDetailImpl implements _EventDetail {
  const _$EventDetailImpl(
      {required this.index,
      required this.name,
      required this.time,
      required this.date,
      required this.location,
      required this.description,
      required this.athlete});

  factory _$EventDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventDetailImplFromJson(json);

  @override
  final int index;
  @override
  final String name;
  @override
  final String time;
  @override
  final String date;
  @override
  final String location;
  @override
  final String description;
  @override
  final AthleteModel athlete;

  @override
  String toString() {
    return 'EventDetail(index: $index, name: $name, time: $time, date: $date, location: $location, description: $description, athlete: $athlete)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventDetailImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.athlete, athlete) || other.athlete == athlete));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, index, name, time, date, location, description, athlete);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventDetailImplCopyWith<_$EventDetailImpl> get copyWith =>
      __$$EventDetailImplCopyWithImpl<_$EventDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventDetailImplToJson(
      this,
    );
  }
}

abstract class _EventDetail implements EventDetail {
  const factory _EventDetail(
      {required final int index,
      required final String name,
      required final String time,
      required final String date,
      required final String location,
      required final String description,
      required final AthleteModel athlete}) = _$EventDetailImpl;

  factory _EventDetail.fromJson(Map<String, dynamic> json) =
      _$EventDetailImpl.fromJson;

  @override
  int get index;
  @override
  String get name;
  @override
  String get time;
  @override
  String get date;
  @override
  String get location;
  @override
  String get description;
  @override
  AthleteModel get athlete;
  @override
  @JsonKey(ignore: true)
  _$$EventDetailImplCopyWith<_$EventDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
