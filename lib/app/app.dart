import 'package:female_health_app/di/di.dart';
import 'package:female_health_app/presentation/pages/register/bloc/register_bloc.dart';
import 'package:female_health_app/presentation/pages/register/choice_page.dart';
import 'package:female_health_app/utils/router/router.dart';
import 'package:female_health_app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppRouter.setStream(context);

    return ScreenUtilInit(
        minTextAdapt: true,
        builder: (context, _) {
          AppRouter.setStream(context);
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (_) => sl<RegisterBloc>(),
              ),
            ],
            child: MaterialApp.router(
                debugShowCheckedModeBanner: false,
                theme: getThemeData(context),
                routerDelegate: AppRouter.router.routerDelegate,
                routeInformationParser: AppRouter.router.routeInformationParser,
                routeInformationProvider:
                    AppRouter.router.routeInformationProvider,
                builder: (context, child) {
                  return child!;
                }),
          );
        });
  }
}
