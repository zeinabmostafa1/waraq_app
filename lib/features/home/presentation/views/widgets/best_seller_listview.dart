import 'package:flutter/material.dart';
import 'package:waraq/features/home/presentation/views/widgets/best_seller_list_view_item.dart';

class BooksListview extends StatelessWidget {
  const BooksListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount:10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: BestSellerListViewItem(),
          );
        },
    );
  }
}
