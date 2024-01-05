part of 'pobular_cubit.dart';

@immutable
abstract class PobularState {}

class PobularInitial extends PobularState {}
class PobularLoading extends PobularState {}
class PobularDone extends PobularState {}
class PobularError extends PobularState {}
