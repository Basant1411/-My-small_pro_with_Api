import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:small_project_with_api/App%20_layer/App_Color.dart';
import 'package:small_project_with_api/App%20_layer/App_text.dart';
import 'package:small_project_with_api/data_layer/cubits/popular_info%20_cubit/popular_info_cubit.dart';
import 'package:small_project_with_api/prsentation_layer/Screens/image.dart';

import '../../App _layer/App_constant.dart';

class DetailsScreen extends StatefulWidget {
  int id;
  String name;

  DetailsScreen({super.key, required this.id, required this.name});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  void initState() {
    PopularInfoCubit.get(context).getPopularInfo(id: widget.id);
    PopularInfoCubit.get(context).getPopularImages(id: widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PopularInfoCubit, PopularInfoState>(
        listener: (context, state) {
      state is PobularInfoError ? debugPrint("an error occured") : null;
    }, builder: (context, state) {
      return state is PobularInfoLoading||state is PobularimageLoading ? Center(
              child: CircularProgressIndicator(
                color: AppColor.appbarcolor,
              ),
            )
          : Scaffold(
              appBar: AppBar(
                  title: Text(
                    AppText.appbartext + "  " + widget.name,
                    style: TextStyle(color: AppColor.textcolor),
                  ),
                  leading: Icon(Icons.arrow_back),
                  backgroundColor: AppColor.appbarcolor,
                  centerTitle: true),
              body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: AppColor.appbarcolor,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(50),
                              bottomRight: Radius.circular((50)))),
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height / 2 - 40,
                      child: Column(children: [
                        Text(
                            "Name" +
                                PopularInfoCubit.get(context)
                                    .popularInfoModel
                                    .name
                                    .toString(),
                            style: TextStyle(
                                color: AppColor.textcolor, fontSize: 18)),
                      ]),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 2 - 40,
                      child: ListView.separated(
                          itemBuilder: (context, i) {
                            return InkWell(
                              child:Image.network(
                                AppConstant.imageBaseUrl +PopularInfoCubit.get(context).imageModel.profiles![i].filePath!,
                                height: 200,
                                width:200,
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (builder) => ImagePreview(height:PopularInfoCubit.get(context).imageModel.profiles![i].height??100,
                                      width: PopularInfoCubit.get(context).imageModel.profiles![i].width??100,
                                      path:PopularInfoCubit.get(context).imageModel.profiles![i].filePath??" " ,

                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          separatorBuilder: (context, i) {
                            return SizedBox(
                              height: 16,
                            );
                          },
                          itemCount: PopularInfoCubit.get(context).imageModel.profiles!.length
                      ),
                    )
                  ],
                ),
              ),
            );
    });
  }
}
