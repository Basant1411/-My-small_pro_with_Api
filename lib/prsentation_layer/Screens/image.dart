import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:small_project_with_api/App%20_layer/App_Color.dart';
import 'package:small_project_with_api/App%20_layer/App_constant.dart';

class ImagePreview extends StatefulWidget {
  String path;
  num height, width;

  ImagePreview(
      {super.key,
      required this.path,
      required this.height,
      required this.width});

  @override
  State<ImagePreview> createState() => _ImagePreviewState();
}

class _ImagePreviewState extends State<ImagePreview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColor.textcolor),
        backgroundColor: AppColor.appbarcolor,
        actions: [IconButton(onPressed: ()async{
          var response=await Dio().get(
            AppConstant.imageBaseUrl+ widget.path ,
            options: Options(responseType: ResponseType.bytes),
          );
          final result=await ImageGallerySaver.saveImage(
            Uint8List.fromList(response.data),
            quality: 60,
            name: "hello",
          );
          print(result);

        },

            icon:Icon(Icons.download, color: AppColor.textcolor))],
      ),
      body: Container(height: MediaQuery.of(context).size.height/1,
        width: double.infinity,
        child: ListView(scrollDirection: Axis.vertical,
          children: [
            Image.network(
              AppConstant.imageBaseUrl+widget.path,
              width: double.parse(widget.height.toString()),
              height: double.parse(widget.width.toString()),
            )
          ],
        ),
      ),
    );
  }
}
