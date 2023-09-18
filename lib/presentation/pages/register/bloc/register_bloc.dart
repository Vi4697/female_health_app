import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:female_health_app/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:intl/intl.dart';

part 'register_event.dart';

part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(const RegisterState()) {
    on<ChoseInformationStepEvent>(_onChoseInformationStep);
    on<ChoseDateEvent>(_onChoseDate);
  }

  void _onChoseInformationStep(
    ChoseInformationStepEvent event,
    Emitter<RegisterState> emit,
  ) {
    try {
      emit(
        state.copyWith(
          choiceForDiscover: event.choiceDiscover,
        ),
      );
      event.onDone();
    } catch (e) {
      log('Error');
      debugPrint(e.toString());
      emit(
        state.copyWith(
          messages: [e.toString()],
        ),
      );
    }
  }

  void _onChoseDate(
    ChoseDateEvent event,
    Emitter<RegisterState> emit,
  ) {
    try {
      emit(
        state.copyWith(
          dateOfBirth: event.dateOfBirth,
        ),
      );
      event.onDone();
    } catch (e) {
      log('Error');
      debugPrint(e.toString());
      emit(
        state.copyWith(
          messages: [e.toString()],
        ),
      );
    }
  }
}
