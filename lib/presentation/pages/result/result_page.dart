import 'package:female_health_app/di/di.dart';
import 'package:female_health_app/presentation/pages/register/bloc/register_bloc.dart';
import 'package:female_health_app/presentation/pages/register/widgets/choice_widget.dart';
import 'package:female_health_app/utils/enums.dart';
import 'package:female_health_app/utils/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  final TextEditingController _choiceController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _choiceController.text =
        sl<RegisterBloc>().state.choiceForDiscover?.mainText ?? '';
    _dateController.text = sl<RegisterBloc>().state.dateOfBirth ?? '';
  }

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              Text(
                'Chosen tracking system:',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              TextField(
                controller: _choiceController,
                enabled: false,
              ),
              const SizedBox(
                height: 73,
              ),
              Text(
                'Chosen birth date:',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              TextField(
                controller: _dateController,
                enabled: false,
                decoration: const InputDecoration(
                    counterStyle: TextStyle(color: Colors.black)),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
