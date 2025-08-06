import 'package:flutter/material.dart';
import 'package:waraq/core/utils/font_styles.dart';
import 'package:waraq/features/home/presentation/views/widgets/best_seller_listview.dart';
import 'package:waraq/features/search/presentation/views/widget/custom_search_textField.dart';
import 'package:waraq/features/search/presentation/views/widget/search_result_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(height: 20),
          Text('Search Result  : ', style: FontStyles.textStyle22, textAlign: TextAlign.start,),
          SizedBox(height: 20),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
