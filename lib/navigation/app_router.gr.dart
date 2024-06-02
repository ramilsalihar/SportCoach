// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:sport_coach/screens/home/athletes/athlete_edit_screen.dart'
    as _i1;
import 'package:sport_coach/screens/home/athletes/athlete_screen.dart' as _i2;
import 'package:sport_coach/screens/home/home_screen.dart' as _i3;
import 'package:sport_coach/screens/home/training/new_training_program.dart'
    as _i5;
import 'package:sport_coach/screens/home/training/training_screen.dart' as _i7;
import 'package:sport_coach/screens/onboarding/intro_screens.dart' as _i4;
import 'package:sport_coach/screens/onboarding/splash_screen.dart' as _i6;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    AthleteEditRoute.name: (routeData) {
      final args = routeData.argsAs<AthleteEditRouteArgs>();
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AthleteEditScreen(
          key: args.key,
          title: args.title,
        ),
      );
    },
    AthleteRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AthleteScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeScreen(),
      );
    },
    IntroRoutes.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.IntroScreens(),
      );
    },
    NewTrainingProgram.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.NewTrainingProgram(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.SplashScreen(),
      );
    },
    TrainingRoute.name: (routeData) {
      final args = routeData.argsAs<TrainingRouteArgs>();
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.TrainingScreen(
          key: args.key,
          title: args.title,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.AthleteEditScreen]
class AthleteEditRoute extends _i8.PageRouteInfo<AthleteEditRouteArgs> {
  AthleteEditRoute({
    _i9.Key? key,
    required String title,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          AthleteEditRoute.name,
          args: AthleteEditRouteArgs(
            key: key,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'AthleteEditRoute';

  static const _i8.PageInfo<AthleteEditRouteArgs> page =
      _i8.PageInfo<AthleteEditRouteArgs>(name);
}

class AthleteEditRouteArgs {
  const AthleteEditRouteArgs({
    this.key,
    required this.title,
  });

  final _i9.Key? key;

  final String title;

  @override
  String toString() {
    return 'AthleteEditRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i2.AthleteScreen]
class AthleteRoute extends _i8.PageRouteInfo<void> {
  const AthleteRoute({List<_i8.PageRouteInfo>? children})
      : super(
          AthleteRoute.name,
          initialChildren: children,
        );

  static const String name = 'AthleteRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomeScreen]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.IntroScreens]
class IntroRoutes extends _i8.PageRouteInfo<void> {
  const IntroRoutes({List<_i8.PageRouteInfo>? children})
      : super(
          IntroRoutes.name,
          initialChildren: children,
        );

  static const String name = 'IntroRoutes';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i5.NewTrainingProgram]
class NewTrainingProgram extends _i8.PageRouteInfo<void> {
  const NewTrainingProgram({List<_i8.PageRouteInfo>? children})
      : super(
          NewTrainingProgram.name,
          initialChildren: children,
        );

  static const String name = 'NewTrainingProgram';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.SplashScreen]
class SplashRoute extends _i8.PageRouteInfo<void> {
  const SplashRoute({List<_i8.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.TrainingScreen]
class TrainingRoute extends _i8.PageRouteInfo<TrainingRouteArgs> {
  TrainingRoute({
    _i9.Key? key,
    required String title,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          TrainingRoute.name,
          args: TrainingRouteArgs(
            key: key,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'TrainingRoute';

  static const _i8.PageInfo<TrainingRouteArgs> page =
      _i8.PageInfo<TrainingRouteArgs>(name);
}

class TrainingRouteArgs {
  const TrainingRouteArgs({
    this.key,
    required this.title,
  });

  final _i9.Key? key;

  final String title;

  @override
  String toString() {
    return 'TrainingRouteArgs{key: $key, title: $title}';
  }
}
