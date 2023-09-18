import 'package:female_health_app/di/di.dart';
import 'package:female_health_app/presentation/pages/register/bloc/register_bloc.dart';
import 'package:female_health_app/presentation/pages/register/widgets/gradient_button.dart';
import 'package:female_health_app/utils/enums.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/router/routes.dart';

class DateOfBirthPage extends StatefulWidget {
  const DateOfBirthPage({super.key});

  @override
  _DateOfBirthPageState createState() => _DateOfBirthPageState();
}

class _DateOfBirthPageState extends State<DateOfBirthPage> {
  int selectedYear = DateTime.now().year;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.only(bottom: 35.h, left: 25.w),
          child: GradientButton(
              dominantColor: const Color(0xFF454581),
              gradientColor: const Color(0xFF454581).withOpacity(0.6),
              buttonText: 'Next',
              onTap: () {
                sl<RegisterBloc>().add(
                  ChoseDateEvent(
                    onDone: () {
                      context.goNamed(
                        Routes.resultsPage.name,
                      );
                    },
                    dateOfBirth: selectedYear.toString(),
                  ),
                );
              }),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/back-gr.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Spacer(),
            Text(
              'Log in your year of birth',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w700,
                  ),
            ),
            SizedBox(height: 60.h),
            SizedBox(
              height: 230.h,
              child: CupertinoPicker(
                itemExtent: 67.h,
                onSelectedItemChanged: (int index) {
                  setState(() {
                    selectedYear = DateTime.now().year - index;
                  });
                },
                children: List.generate(
                  100,
                  (index) {
                    final year = DateTime.now().year - index;
                    return Padding(
                      padding: const EdgeInsets.only(top: 0, bottom: 0),
                      child: Center(
                          child: Text(
                        '$year',
                        style:
                            Theme.of(context).textTheme.headlineLarge!.copyWith(
                                  fontSize: 40.sp,
                                ),
                      )),
                    );
                  },
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
