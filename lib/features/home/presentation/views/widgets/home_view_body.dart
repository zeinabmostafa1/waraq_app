import 'package:flutter/material.dart';
import 'package:waraq/core/styles.dart';
import 'package:waraq/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:waraq/features/home/presentation/views/widgets/custom_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          CustomAppbar(),
          CustomListView(),
          SizedBox(height: 25,),
          Text('Best Seller', style: Styles.titleMedium,),
         ]
      ),
    );
  }
}
