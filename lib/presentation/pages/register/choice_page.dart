import 'package:female_health_app/di/di.dart';
import 'package:female_health_app/presentation/pages/register/bloc/register_bloc.dart';
import 'package:female_health_app/presentation/pages/register/widgets/choice_widget.dart';
import 'package:female_health_app/utils/enums.dart';
import 'package:female_health_app/utils/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ChoicePage extends StatelessWidget {
  const ChoicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/back-gr.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: SafeArea(
          minimum: EdgeInsets.only(left: 34.w, right: 34.w),
          child: Column(
            children: [
              const Spacer(),
              ChoiceWidget(
                choiceToDiscover: ChoiceDiscover.trackPeriods,
                onTap: () {
                  sl<RegisterBloc>().add(
                    ChoseInformationStepEvent(
                      onDone: () {
                        context.goNamed(
                          Routes.dateChoicePage.name,
                        );
                      },
                      choiceDiscover: ChoiceDiscover.trackPeriods,
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 73,
              ),
              ChoiceWidget(
                choiceToDiscover: ChoiceDiscover.getPregnant,
                onTap: () {
                  sl<RegisterBloc>().add(
                    ChoseInformationStepEvent(
                      onDone: () {
                        context.goNamed(
                          Routes.dateChoicePage.name,
                        );
                      },
                      choiceDiscover: ChoiceDiscover.trackPeriods,
                    ),
                  );
                },
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
