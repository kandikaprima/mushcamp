part of 'jamur_cubit.dart';

@immutable
abstract class JamurState {}

class JamurInitial extends JamurState {}

class JamurLoading extends JamurState {}

class JamurSuccess extends JamurState {
  final JamurModel jamur;

  JamurSuccess(this.jamur);

  List<Object> get props => [jamur];
}

class JamurFailed extends JamurState {
  final String error;

  JamurFailed(this.error);

  List<Object> get props => [error];
}