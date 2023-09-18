import 'package:female_health_app/utils/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavigationService {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<void> navigateToDateChoice(BuildContext context) async {
    context.goNamed(Routes.choicePage.name);
  }
  Future<void> navigateToResultsPage(BuildContext context) async {
    context.goNamed(Routes.resultsPage.name);
  }
}
