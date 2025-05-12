import 'package:flutter/material.dart';
import 'package:waraq/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:waraq/features/home/presentation/views/widgets/custom_list_view.dart';
import 'package:waraq/features/home/presentation/views/widgets/custom_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        CustomAppbar(),
        CustomListView(),
       ]
    );
  }
}
