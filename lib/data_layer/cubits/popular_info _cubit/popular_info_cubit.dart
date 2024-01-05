import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:small_project_with_api/domain_layer/models/imageModel.dart';
import 'package:small_project_with_api/domain_layer/models/popular_info_model.dart';

import '../../requests/pobular_request.dart';

part 'popular_info_state.dart';

class PopularInfoCubit extends Cubit<PopularInfoState> {
  PopularInfoCubit() : super(PopularInfoInitial());
  static PopularInfoCubit get(context) =>BlocProvider.of(context);
  PopularInfoModel popularInfoModel=PopularInfoModel();
  ImageModel imageModel=ImageModel();
  getPopularInfo({required int id }) {
    emit(PobularInfoLoading());
    PobularRequests.getpobularInfo(id: id, onSuccess:(res){
      popularInfoModel=res ;
      emit(PobularInfoDone());
    },
        onError:(statuasCode){
emit(PobularInfoError());
    } );

  }
  getPopularImages({required int id}){
    emit (PobularimageLoading());
    PobularRequests.getpopularimages(id: id,onSuccess:(res){ imageModel=res;
    emit(PobularimageDone());
    },
        onError: (
            statusCode
            ){
          emit(PobularimageError());
          log(statusCode.toString());
        });
  }
}
