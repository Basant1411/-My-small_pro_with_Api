import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:small_project_with_api/domain_layer/models/popular_model.dart';

import '../../requests/pobular_request.dart';

part 'pobular_state.dart';

class PobularCubit extends Cubit<PobularState> {
  PobularCubit() : super(PobularInitial());
  static PobularCubit get(context)=>BlocProvider.of(context);
  List<Results>popularlist=[];
  getPopular(){
    emit(PobularLoading());
    PobularRequests.getpobular(onSuccess: (res){
      popularlist=res;
      emit(PobularDone());
    }, onError: (statusCode){
      emit(PobularError());
    });

  }
  
}
