import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:small_project_with_api/App%20_layer/App_Color.dart';
import 'package:small_project_with_api/App%20_layer/App_text.dart';
import 'package:small_project_with_api/prsentation_layer/Screens/Details_screen.dart';
import 'package:small_project_with_api/prsentation_layer/components/Home_screencard.dart';

import '../../data_layer/cubits/pobular_cubit/pobular_cubit.dart';
import '../../domain_layer/models/popular_model.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    PobularCubit.get(context).getPopular();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppText.appbartext1,
            style: TextStyle(color: AppColor.textcolor)),
      ),
      body:BlocConsumer<PobularCubit, PobularState>(
        listener: (context, state) {
      state is PobularError?debugPrint("an error happend"):null;
    },
    builder: (context, state) {
    return state is PobularLoading?const Center(child: CircularProgressIndicator (color: AppColor.appbarcolor,),):

    Padding(
        padding: const EdgeInsets.only(top: 10, right: 16, left: 16),
        child: ListView.separated(
            itemBuilder: (context, i) {
              return InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (Builder) =>DetailsScreen(id: int.parse(PobularCubit.get(context).popularlist[i].id.toString()) ,name: PobularCubit.get(context).popularlist[i].name!,)));
                },
                child: HomeScreenCard(
                  name:PobularCubit.get(context).popularlist[i].name??"No Name",
                ),
              );
            },
            separatorBuilder: (context, i) {
              return SizedBox(
                height: 20,
              );
            },
         itemCount:PobularCubit.get(context).popularlist.length),
    );
    }),
    );
  }
}
