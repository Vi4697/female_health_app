import 'package:female_health_app/presentation/pages/register/choice_page.dart';
import 'package:female_health_app/presentation/pages/register/date_of_birth_page.dart';
import 'package:female_health_app/presentation/pages/result/result_page.dart';
import 'package:female_health_app/utils/router/routes.dart';
import 'package:female_health_app/utils/services/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

RouteTransitionsBuilder iosLikeTransitionBuilder() {
  return (context, animation, secondaryAnimation, child) {
    const begin = Offset(1.0, 0.0);
    const end = Offset.zero;
    final tween =
        Tween(begin: begin, end: end).chain(CurveTween(curve: Curves.ease));
    return SlideTransition(
      position: animation.drive(tween),
      child: child,
    );
  };
}

class AppRouter {
  AppRouter.setStream(BuildContext ctx) {
    context = ctx;
  }

  static late BuildContext context;

  static final GoRouter router = GoRouter(
      navigatorKey: NavigationService.navigatorKey,
      initialLocation: Routes.choicePage.path,
      routes: [
        GoRoute(
            path: Routes.choicePage.path,
            name: Routes.choicePage.name,
            pageBuilder: (context, state) => CustomTransitionPage(
                  key: state.pageKey,
                  child: const ChoicePage(),
                  transitionsBuilder: iosLikeTransitionBuilder(),
                ),
            routes: [
              GoRoute(
                  path: Routes.dateChoicePage.path,
                  name: Routes.dateChoicePage.name,
                  pageBuilder: (context, state) => CustomTransitionPage(
                        key: state.pageKey,
                        child: const DateOfBirthPage(),
                        transitionsBuilder: iosLikeTransitionBuilder(),
                      ),
                  routes: [
                    GoRoute(
                      path: Routes.resultsPage.path,
                      name: Routes.resultsPage.name,
                      pageBuilder: (context, state) => CustomTransitionPage(
                        key: state.pageKey,
                        child: const ResultPage(),
                        transitionsBuilder: iosLikeTransitionBuilder(),
                      ),
                    ),
                  ]),
            ]),
      ]);
}
