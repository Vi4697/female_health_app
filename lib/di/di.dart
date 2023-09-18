import 'dart:developer';
import 'package:female_health_app/presentation/pages/register/bloc/register_bloc.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

GetIt sl = GetIt.instance;

Future<void> serviceLocator({bool isUnitTest = false}) async {
  log('Initiating Service Locator');

  if (isUnitTest) {
    WidgetsFlutterBinding.ensureInitialized();
    await sl.reset();
    bloc();
  } else {
    bloc();
  }
}

void bloc() {
  sl.registerLazySingleton(() => RegisterBloc());
}
