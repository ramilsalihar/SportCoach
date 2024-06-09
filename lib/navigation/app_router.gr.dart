// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;
import 'package:sport_coach/screens/home/athletes/athlete_edit_screen.dart'
    as _i1;
import 'package:sport_coach/screens/home/athletes/athlete_screen.dart' as _i3;
import 'package:sport_coach/screens/home/calendar/event_edit.dart' as _i4;
import 'package:sport_coach/screens/home/calendar/event_screen.dart' as _i5;
import 'package:sport_coach/screens/home/home_screen.dart' as _i6;
import 'package:sport_coach/screens/home/rating/athlete_rating.dart' as _i2;
import 'package:sport_coach/screens/home/rating/new_rating.dart' as _i8;
import 'package:sport_coach/screens/home/training/new_training_program.dart'
    as _i9;
import 'package:sport_coach/screens/home/training/training_screen.dart' as _i11;
import 'package:sport_coach/screens/onboarding/intro_screens.dart' as _i7;
import 'package:sport_coach/screens/onboarding/splash_screen.dart' as _i10;

abstract class $AppRouter extends _i12.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    AthleteEditRoute.name: (routeData) {
      final args = routeData.argsAs<AthleteEditRouteArgs>(
          orElse: () => const AthleteEditRouteArgs());
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AthleteEditScreen(
          key: args.key,
          title: args.title,
          index: args.index,
          isEdit: args.isEdit,
        ),
      );
    },
    AthleteRating.name: (routeData) {
      final args = routeData.argsAs<AthleteRatingArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.AthleteRating(
          key: args.key,
          index: args.index,
          title: args.title,
          isEdit: args.isEdit,
        ),
      );
    },
    AthleteRoute.name: (routeData) {
      final args = routeData.argsAs<AthleteRouteArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.AthleteScreen(
          key: args.key,
          index: args.index,
        ),
      );
    },
    EventEdit.name: (routeData) {
      final args =
          routeData.argsAs<EventEditArgs>(orElse: () => const EventEditArgs());
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.EventEdit(
          key: args.key,
          index: args.index,
          title: args.title,
          isEdit: args.isEdit,
        ),
      );
    },
    EventRoute.name: (routeData) {
      final args = routeData.argsAs<EventRouteArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.EventScreen(
          key: args.key,
          index: args.index,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.HomeScreen(),
      );
    },
    IntroRoutes.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.IntroScreens(),
      );
    },
    NewRating.name: (routeData) {
      final args = routeData.argsAs<NewRatingArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.NewRating(
          key: args.key,
          index: args.index,
        ),
      );
    },
    NewTrainingProgram.name: (routeData) {
      final args = routeData.argsAs<NewTrainingProgramArgs>(
          orElse: () => const NewTrainingProgramArgs());
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.NewTrainingProgram(
          key: args.key,
          title: args.title,
          index: args.index,
          isEdit: args.isEdit,
        ),
      );
    },
    SplashRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.SplashScreen(),
      );
    },
    TrainingRoute.name: (routeData) {
      final args = routeData.argsAs<TrainingRouteArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.TrainingScreen(
          key: args.key,
          index: args.index,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.AthleteEditScreen]
class AthleteEditRoute extends _i12.PageRouteInfo<AthleteEditRouteArgs> {
  AthleteEditRoute({
    _i13.Key? key,
    String? title,
    int? index,
    bool isEdit = false,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          AthleteEditRoute.name,
          args: AthleteEditRouteArgs(
            key: key,
            title: title,
            index: index,
            isEdit: isEdit,
          ),
          initialChildren: children,
        );

  static const String name = 'AthleteEditRoute';

  static const _i12.PageInfo<AthleteEditRouteArgs> page =
      _i12.PageInfo<AthleteEditRouteArgs>(name);
}

class AthleteEditRouteArgs {
  const AthleteEditRouteArgs({
    this.key,
    this.title,
    this.index,
    this.isEdit = false,
  });

  final _i13.Key? key;

  final String? title;

  final int? index;

  final bool isEdit;

  @override
  String toString() {
    return 'AthleteEditRouteArgs{key: $key, title: $title, index: $index, isEdit: $isEdit}';
  }
}

/// generated route for
/// [_i2.AthleteRating]
class AthleteRating extends _i12.PageRouteInfo<AthleteRatingArgs> {
  AthleteRating({
    _i13.Key? key,
    required int index,
    required String title,
    bool isEdit = false,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          AthleteRating.name,
          args: AthleteRatingArgs(
            key: key,
            index: index,
            title: title,
            isEdit: isEdit,
          ),
          initialChildren: children,
        );

  static const String name = 'AthleteRating';

  static const _i12.PageInfo<AthleteRatingArgs> page =
      _i12.PageInfo<AthleteRatingArgs>(name);
}

class AthleteRatingArgs {
  const AthleteRatingArgs({
    this.key,
    required this.index,
    required this.title,
    this.isEdit = false,
  });

  final _i13.Key? key;

  final int index;

  final String title;

  final bool isEdit;

  @override
  String toString() {
    return 'AthleteRatingArgs{key: $key, index: $index, title: $title, isEdit: $isEdit}';
  }
}

/// generated route for
/// [_i3.AthleteScreen]
class AthleteRoute extends _i12.PageRouteInfo<AthleteRouteArgs> {
  AthleteRoute({
    _i13.Key? key,
    required int index,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          AthleteRoute.name,
          args: AthleteRouteArgs(
            key: key,
            index: index,
          ),
          initialChildren: children,
        );

  static const String name = 'AthleteRoute';

  static const _i12.PageInfo<AthleteRouteArgs> page =
      _i12.PageInfo<AthleteRouteArgs>(name);
}

class AthleteRouteArgs {
  const AthleteRouteArgs({
    this.key,
    required this.index,
  });

  final _i13.Key? key;

  final int index;

  @override
  String toString() {
    return 'AthleteRouteArgs{key: $key, index: $index}';
  }
}

/// generated route for
/// [_i4.EventEdit]
class EventEdit extends _i12.PageRouteInfo<EventEditArgs> {
  EventEdit({
    _i13.Key? key,
    int? index,
    String? title,
    bool isEdit = false,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          EventEdit.name,
          args: EventEditArgs(
            key: key,
            index: index,
            title: title,
            isEdit: isEdit,
          ),
          initialChildren: children,
        );

  static const String name = 'EventEdit';

  static const _i12.PageInfo<EventEditArgs> page =
      _i12.PageInfo<EventEditArgs>(name);
}

class EventEditArgs {
  const EventEditArgs({
    this.key,
    this.index,
    this.title,
    this.isEdit = false,
  });

  final _i13.Key? key;

  final int? index;

  final String? title;

  final bool isEdit;

  @override
  String toString() {
    return 'EventEditArgs{key: $key, index: $index, title: $title, isEdit: $isEdit}';
  }
}

/// generated route for
/// [_i5.EventScreen]
class EventRoute extends _i12.PageRouteInfo<EventRouteArgs> {
  EventRoute({
    _i13.Key? key,
    required int index,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          EventRoute.name,
          args: EventRouteArgs(
            key: key,
            index: index,
          ),
          initialChildren: children,
        );

  static const String name = 'EventRoute';

  static const _i12.PageInfo<EventRouteArgs> page =
      _i12.PageInfo<EventRouteArgs>(name);
}

class EventRouteArgs {
  const EventRouteArgs({
    this.key,
    required this.index,
  });

  final _i13.Key? key;

  final int index;

  @override
  String toString() {
    return 'EventRouteArgs{key: $key, index: $index}';
  }
}

/// generated route for
/// [_i6.HomeScreen]
class HomeRoute extends _i12.PageRouteInfo<void> {
  const HomeRoute({List<_i12.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i7.IntroScreens]
class IntroRoutes extends _i12.PageRouteInfo<void> {
  const IntroRoutes({List<_i12.PageRouteInfo>? children})
      : super(
          IntroRoutes.name,
          initialChildren: children,
        );

  static const String name = 'IntroRoutes';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i8.NewRating]
class NewRating extends _i12.PageRouteInfo<NewRatingArgs> {
  NewRating({
    _i13.Key? key,
    required int index,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          NewRating.name,
          args: NewRatingArgs(
            key: key,
            index: index,
          ),
          initialChildren: children,
        );

  static const String name = 'NewRating';

  static const _i12.PageInfo<NewRatingArgs> page =
      _i12.PageInfo<NewRatingArgs>(name);
}

class NewRatingArgs {
  const NewRatingArgs({
    this.key,
    required this.index,
  });

  final _i13.Key? key;

  final int index;

  @override
  String toString() {
    return 'NewRatingArgs{key: $key, index: $index}';
  }
}

/// generated route for
/// [_i9.NewTrainingProgram]
class NewTrainingProgram extends _i12.PageRouteInfo<NewTrainingProgramArgs> {
  NewTrainingProgram({
    _i13.Key? key,
    String? title,
    int? index,
    bool isEdit = false,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          NewTrainingProgram.name,
          args: NewTrainingProgramArgs(
            key: key,
            title: title,
            index: index,
            isEdit: isEdit,
          ),
          initialChildren: children,
        );

  static const String name = 'NewTrainingProgram';

  static const _i12.PageInfo<NewTrainingProgramArgs> page =
      _i12.PageInfo<NewTrainingProgramArgs>(name);
}

class NewTrainingProgramArgs {
  const NewTrainingProgramArgs({
    this.key,
    this.title,
    this.index,
    this.isEdit = false,
  });

  final _i13.Key? key;

  final String? title;

  final int? index;

  final bool isEdit;

  @override
  String toString() {
    return 'NewTrainingProgramArgs{key: $key, title: $title, index: $index, isEdit: $isEdit}';
  }
}

/// generated route for
/// [_i10.SplashScreen]
class SplashRoute extends _i12.PageRouteInfo<void> {
  const SplashRoute({List<_i12.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i11.TrainingScreen]
class TrainingRoute extends _i12.PageRouteInfo<TrainingRouteArgs> {
  TrainingRoute({
    _i13.Key? key,
    required int index,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          TrainingRoute.name,
          args: TrainingRouteArgs(
            key: key,
            index: index,
          ),
          initialChildren: children,
        );

  static const String name = 'TrainingRoute';

  static const _i12.PageInfo<TrainingRouteArgs> page =
      _i12.PageInfo<TrainingRouteArgs>(name);
}

class TrainingRouteArgs {
  const TrainingRouteArgs({
    this.key,
    required this.index,
  });

  final _i13.Key? key;

  final int index;

  @override
  String toString() {
    return 'TrainingRouteArgs{key: $key, index: $index}';
  }
}
