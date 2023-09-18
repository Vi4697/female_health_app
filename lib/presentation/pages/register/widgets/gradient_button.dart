import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GradientButton extends StatefulWidget {
  final Color dominantColor;
  final Color gradientColor;
  final String buttonText;
  final Function() onTap;

  const GradientButton({
    required this.dominantColor,
    required this.gradientColor,
    required this.buttonText,
    required this.onTap,
  });

  @override
  _GradientButtonState createState() => _GradientButtonState();
}

class _GradientButtonState extends State<GradientButton> {
  bool isPressed = false;

  double buttonTranslation = 0.0;

  void _slideButtonOut() {
    setState(() {
      buttonTranslation = 50.0; // Adjust the translation distance
    });

    Future.delayed(const Duration(milliseconds: 300), () {
      setState(() {
        buttonTranslation = 0.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut, // Use ease-out curve
      transform: Matrix4.translationValues(buttonTranslation, 0.0, 0.0),
      child: Container(
        width: 189.w,
        height: 50.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              widget.dominantColor,
              widget.gradientColor,
            ],
          ),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              _slideButtonOut(); // Trigger the slide-out animation
              widget.onTap();
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 68.w,
                  ),
                  Text(
                    '${widget.buttonText}  ',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                  const Spacer(),
                  SvgPicture.asset(
                    'assets/icons/arrow.svg',
                    height: 27.h,
                    width: 27.w,
                  ),
                  SizedBox(
                    width: 7.w,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
