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
      final args = routeData.argsAs<AthleteEditRouteArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AthleteEditScreen(
          key: args.key,
          title: args.title,
        ),
      );
    },
    AthleteRating.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AthleteRating(),
      );
    },
    AthleteRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AthleteScreen(),
      );
    },
    EventEdit.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.EventEdit(),
      );
    },
    EventRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.EventScreen(),
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
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.NewRating(),
      );
    },
    NewTrainingProgram.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.NewTrainingProgram(),
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
          title: args.title,
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
    required String title,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          AthleteEditRoute.name,
          args: AthleteEditRouteArgs(
            key: key,
            title: title,
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
    required this.title,
  });

  final _i13.Key? key;

  final String title;

  @override
  String toString() {
    return 'AthleteEditRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i2.AthleteRating]
class AthleteRating extends _i12.PageRouteInfo<void> {
  const AthleteRating({List<_i12.PageRouteInfo>? children})
      : super(
          AthleteRating.name,
          initialChildren: children,
        );

  static const String name = 'AthleteRating';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AthleteScreen]
class AthleteRoute extends _i12.PageRouteInfo<void> {
  const AthleteRoute({List<_i12.PageRouteInfo>? children})
      : super(
          AthleteRoute.name,
          initialChildren: children,
        );

  static const String name = 'AthleteRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i4.EventEdit]
class EventEdit extends _i12.PageRouteInfo<void> {
  const EventEdit({List<_i12.PageRouteInfo>? children})
      : super(
          EventEdit.name,
          initialChildren: children,
        );

  static const String name = 'EventEdit';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i5.EventScreen]
class EventRoute extends _i12.PageRouteInfo<void> {
  const EventRoute({List<_i12.PageRouteInfo>? children})
      : super(
          EventRoute.name,
          initialChildren: children,
        );

  static const String name = 'EventRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
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
class NewRating extends _i12.PageRouteInfo<void> {
  const NewRating({List<_i12.PageRouteInfo>? children})
      : super(
          NewRating.name,
          initialChildren: children,
        );

  static const String name = 'NewRating';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i9.NewTrainingProgram]
class NewTrainingProgram extends _i12.PageRouteInfo<void> {
  const NewTrainingProgram({List<_i12.PageRouteInfo>? children})
      : super(
          NewTrainingProgram.name,
          initialChildren: children,
        );

  static const String name = 'NewTrainingProgram';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
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
    required String title,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          TrainingRoute.name,
          args: TrainingRouteArgs(
            key: key,
            title: title,
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
    required this.title,
  });

  final _i13.Key? key;

  final String title;

  @override
  String toString() {
    return 'TrainingRouteArgs{key: $key, title: $title}';
  }
}
