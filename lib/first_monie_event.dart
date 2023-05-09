import 'package:equatable/equatable.dart';

// Define the events
abstract class FirstMonieEvent extends Equatable {
  const FirstMonieEvent();

  @override
  List<Object> get props => [];
}

class PinEntered extends FirstMonieEvent {
  final String pin;

  const PinEntered(this.pin);

  @override
  List<Object> get props => [pin];
}
