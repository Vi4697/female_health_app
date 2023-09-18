import 'package:female_health_app/app/app.dart';
import 'package:female_health_app/di/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'utils/bootstrap.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ),
  );
  await serviceLocator();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((_) {
    bootstrap(
      () => const App(),
    );
  });
}
