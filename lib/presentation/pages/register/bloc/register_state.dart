part of 'register_bloc.dart';

class RegisterState extends Equatable {
  const RegisterState({
    this.choiceForDiscover,
    this.dateOfBirth,
    this.messages,
  });

  final ChoiceDiscover? choiceForDiscover;
  final String? dateOfBirth;
  final List<String>? messages;

  RegisterState copyWith({
    ChoiceDiscover? choiceForDiscover,
    String? dateOfBirth,
    List<String>? messages,
  }) {
    return RegisterState(
      choiceForDiscover: choiceForDiscover ?? this.choiceForDiscover,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      messages: messages ?? this.messages,
    );
  }

  @override
  List<Object?> get props => [
        choiceForDiscover,
        dateOfBirth,
        messages,
      ];
}
