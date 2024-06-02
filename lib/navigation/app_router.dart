import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  AppRouter();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          path: '/home',
          // initial: true,
        ),
        AutoRoute(
          page: SplashRoute.page,
          path: '/splash',
        ),
        AutoRoute(
          page: IntroRoutes.page,
          path: '/intro',
          // initial: true,
        ),
        AutoRoute(
          page: AthleteRoute.page,
          path: '/athlete',
          // initial: true,
        ),
        AutoRoute(
          page: AthleteEditRoute.page,
          path: '/athlete-edit',
          // initial: true,
        ),
        AutoRoute(
          page: TrainingRoute.page,
          path: '/training',
          // initial: true,
        ),
        AutoRoute(
          page: NewTrainingProgram.page,
          path: '/new-training-program',
          initial: true,
        ),
      ];
}
