import 'package:female_health_app/di/di.dart';
import 'package:female_health_app/presentation/pages/register/bloc/register_bloc.dart';
import 'package:female_health_app/utils/enums.dart';
import 'package:female_health_app/utils/palette.dart';
import 'package:female_health_app/utils/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class ChoiceWidget extends StatelessWidget {
  const ChoiceWidget({
    Key? key,
    required this.choiceToDiscover,
    required this.onTap,
  }) : super(key: key);
  final ChoiceDiscover choiceToDiscover;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Palette.pinkChoiceButtonColor,
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(12.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 31.h,
                  ),
                  SizedBox(
                    width: 213.w,
                    child: Text(
                      choiceToDiscover.mainText,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 27.sp,
                            fontWeight: FontWeight.w900,
                          ),
                    ),
                  ),
                  SizedBox(
                    width: 213.w,
                    child: Text(
                      choiceToDiscover.additionalText,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                  ),
                  SizedBox(
                    height: 31.h,
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/icons/purple-arrow.svg',
                  height: 28.h,
                  width: 30.w,
                ),
              ],
            ),
            SizedBox(
              width: 17.w,
            ),
          ],
        ),
      ),
    );
  }
}
