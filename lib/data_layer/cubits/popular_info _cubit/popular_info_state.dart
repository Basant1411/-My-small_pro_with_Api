part of 'popular_info_cubit.dart';

@immutable
abstract class PopularInfoState {}

class PopularInfoInitial extends PopularInfoState {}
class PobularInfoLoading extends PopularInfoState {}
class PobularInfoDone extends PopularInfoState {}
class PobularInfoError extends PopularInfoState {}
class PobularimageLoading extends PopularInfoState {}
class PobularimageDone extends PopularInfoState {}
class PobularimageError extends PopularInfoState {}
