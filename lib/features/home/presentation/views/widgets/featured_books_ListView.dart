import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waraq/core/utils/utils.dart';
import 'package:waraq/core/widgets/custom_error_widget.dart';
import 'package:waraq/core/widgets/custom_loading_indicator.dart';
import 'package:waraq/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:waraq/features/home/presentation/views/widgets/custom_book_image.dart';

class FeaturedBooksListView extends StatelessWidget {
  FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery
                .of(context)
                .size
                .height * 0.3,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CustomBookImage(imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail ?? '',);
              },
            ),
          
          );
        }else if(state is FeaturedBooksFailure){
          return CustomErrorWidget(errMessage: state.errMessage,);
        }
        else{
          return CustomLoadingIndicator();
        }
      },
    );
  }

}
