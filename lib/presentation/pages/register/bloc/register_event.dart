part of 'register_bloc.dart';

abstract class RegisterEvent extends Equatable {
  const RegisterEvent();

  @override
  List<Object> get props => [];
}

class ChoseInformationStepEvent extends RegisterEvent {
  const ChoseInformationStepEvent({
    required this.onDone,
    required this.choiceDiscover,
  });

  final Function() onDone;
  final ChoiceDiscover choiceDiscover;

  @override
  List<Object> get props => [];
}

class ChoseDateEvent extends RegisterEvent {
  const ChoseDateEvent({
    required this.onDone,
    required this.dateOfBirth,
  });

  final Function() onDone;
  final String dateOfBirth;

  @override
  List<Object> get props => [];
}


