import 'package:flutter/material.dart';
import 'package:waraq/core/utils/font_styles.dart';
import 'package:waraq/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:waraq/features/home/presentation/views/widgets/books_listview.dart';
import 'package:waraq/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:waraq/features/home/presentation/views/widgets/featured_books_ListView.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: CustomAppbar(),
                ),
                FeaturedBooksListView(),
                SizedBox(height: 25,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text('Best Seller', style: FontStyles.textStyle22,),
                ),
                SizedBox(height: 20,),
              ]
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: BooksListview(),
          ),
        )
      ],
    );
  }
}
