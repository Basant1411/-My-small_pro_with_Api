
  import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart'as http;
import 'package:small_project_with_api/domain_layer/models/popular_info_model.dart';

  import '../../domain_layer/models/imageModel.dart';
import '../../domain_layer/models/popular_model.dart';
  class PobularRequests{
  static void getpobular({ required Function(List<Results>)onSuccess, required Function(int statuasCode) onError})async{
  Map<String,String>headers={"Content-type": "application/json"
  };await http.get(Uri.parse("https://api.themoviedb.org/3/person/popular?api_key=2dfe23358236069710a379edd4c65a6b"),
  headers: headers,
  ).then((response) {if(response.statusCode==200){
   Map<String,dynamic> decoded={};
   decoded=jsonDecode(response.body);
   PopularModel popularModel=PopularModel.fromJson(decoded);
   onSuccess(popularModel.results!);

  }
  else{

    onError(response.statusCode);
  }}); }
  static void getpobularInfo({ required int id ,required Function(PopularInfoModel)onSuccess, required Function(int statuasCode) onError})async{
  Map<String,String>headers={"Content-type": "application/json"
  };await http.get(Uri.parse("https://api.themoviedb.org/3/person/$id?api_key=2dfe23358236069710a379edd4c65a6b"),
  headers: headers,
  ).then((response) {if(response.statusCode==200){
   Map<String,dynamic> decoded={};
   decoded=jsonDecode(response.body);
  PopularInfoModel popularInfoModel=PopularInfoModel.fromJson(decoded);
   onSuccess(popularInfoModel);

  }
  else{

    onError(response.statusCode);
  }});
  }
  static void getpopularimages({
    required int id,
    required Function(ImageModel) onSuccess,
    required Function(int statusCode) onError,
  }) async {
    Map<String, String> headers = {"Content-type": "application/json"};
    await http
        .get(
      Uri.parse(
          "https://api.themoviedb.org/3/person/$id/images?api_key=2dfe23358236069710a379edd4c65a6b"),
      headers:headers ,
    )
        .then((responce) {
      if (responce.statusCode == 200) {
        Map<String, dynamic> decoded = {};
        decoded = json.decode(responce.body);
        ImageModel popularimage = ImageModel.fromJson(decoded);
        onSuccess( popularimage);
      } else {
        onError(responce.statusCode);
      }
      log(responce.body, name: "this is my responce");
      log(responce.statusCode.toString(), name: "this is my status code");
    });
  }

}