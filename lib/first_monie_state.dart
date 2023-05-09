import 'package:equatable/equatable.dart';

// Define the states
abstract class FirstMonieState extends Equatable {
  const FirstMonieState();

  @override
  List<Object> get props => [];
}

class LoadingState extends FirstMonieState {}

class SuccessState extends FirstMonieState {}
