import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  AppRouter();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          path: '/splash',
          initial: true,
        ),
        AutoRoute(
          page: IntroRoutes.page,
          path: '/intro',
          // initial: true,
        ),
        AutoRoute(
          page: HomeRoute.page,
          path: '/home',
          // initial: true,
        ),
        AutoRoute(
          page: AthleteRoute.page,
          path: '/athlete',
          children: [
            AutoRoute(
              page: AthleteEditRoute.page,
              path: 'athlete-edit',
            ),
          ],
        ),
        AutoRoute(
          page: TrainingRoute.page,
          path: '/training',
          children: [
            AutoRoute(
              page: NewTrainingProgram.page,
              path: 'new-training-program',
            ),
          ],
        ),
        AutoRoute(
          page: EventRoute.page,
          path: '/event',
          children: [
            AutoRoute(
              page: EventEdit.page,
              path: 'event-edit',
            ),
          ],
        ),
        AutoRoute(
          page: NewRating.page,
          path: '/new-rating',
          children: [
            AutoRoute(
              page: AthleteRating.page,
              path: 'athlete-rating',
            ),
          ],
        ),
      ];
}
