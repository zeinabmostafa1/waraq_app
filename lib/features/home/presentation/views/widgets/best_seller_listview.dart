import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waraq/core/widgets/custom_error_widget.dart';
import 'package:waraq/core/widgets/custom_loading_indicator.dart';
import 'package:waraq/features/home/presentation/manager/newest_books/newest_books_cubit.dart';
import 'package:waraq/features/home/presentation/views/widgets/book_list_view_item.dart';

class BestSellerListview extends StatelessWidget {
  const BestSellerListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BookListViewItem(bookModel: state.books[index],),
              );
            },
          );
        }
        else if(state is NewestBooksFailure){
          return CustomErrorWidget(errMessage: state.errMessage);
        }else {
          return CustomLoadingIndicator();
        }
      },
    );
  }
}
