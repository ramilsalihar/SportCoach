import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  AppRouter();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          path: '/splash',
          // initial: true,
        ),
        AutoRoute(
          page: IntroRoutes.page,
          path: '/intro',
        ),
        AutoRoute(
          page: HomeRoute.page,
          path: '/home',
          initial: true,
        ),
        AutoRoute(
          page: AthleteRoute.page,
          path: '/athlete',
        ),
        AutoRoute(
          page: AthleteEditRoute.page,
          path: '/athlete-edit',
        ),
        AutoRoute(
          page: TrainingRoute.page,
          path: '/training',
        ),
        AutoRoute(
          page: NewTrainingProgram.page,
          path: '/new-training-program',
        ),
        AutoRoute(
          page: EventRoute.page,
          path: '/event',
        ),
        AutoRoute(
          page: EventEdit.page,
          path: '/event-edit',
        ),
        AutoRoute(
          page: NewRating.page,
          path: '/new-rating',
        ),
        AutoRoute(
          page: AthleteRating.page,
          path: '/athlete-rating',
        ),
      ];
}
