import 'package:flutter/material.dart';

import '../../../../home/presentation/views/widgets/book_list_view_item.dart'
    show BookListViewItem;

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemCount:20,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          // child: BookListViewItem(),
          child: Text('data'),
        );
      },
    );
  }
}
