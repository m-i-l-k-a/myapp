import 'dart:async';

import 'package:bloc/bloc.dart';

// Events
abstract class FirstMonieEvent {}

class PinEntered extends FirstMonieEvent {
  final String pin;

  PinEntered(this.pin);
}

// States
abstract class FirstMonieState {}

class InitialState extends FirstMonieState {}

class LoadingState extends FirstMonieState {}

class SuccessState extends FirstMonieState {}

// Bloc
class FirstMonieBloc extends Bloc<FirstMonieEvent, FirstMonieState> {
  FirstMonieBloc() : super(InitialState());

  @override
  Stream<FirstMonieState> mapEventToState(FirstMonieEvent event) async* {
    if (event is PinEntered) {
      yield LoadingState();

      await Future.delayed(Duration(seconds: 5));

      yield SuccessState();
    }
  }
}
