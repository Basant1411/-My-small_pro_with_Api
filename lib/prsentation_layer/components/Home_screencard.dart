import 'package:flutter/material.dart';
import 'package:small_project_with_api/App%20_layer/App_Color.dart';

class HomeScreenCard extends StatelessWidget {
  String name;
  HomeScreenCard({super.key,required this.name});
  @override
  Widget build(BuildContext context) {
    return   Container(height: 150,width: double.infinity,decoration: BoxDecoration(
      color: AppColor.appbarcolor,borderRadius: BorderRadius.circular(16),),child: Center(child: Text(name,style: TextStyle(color: AppColor.textcolor),)

    ));}
}
