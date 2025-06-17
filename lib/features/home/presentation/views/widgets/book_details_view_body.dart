import 'package:flutter/material.dart';
import 'package:waraq/core/utils/font_styles.dart';
import 'package:waraq/features/home/presentation/views/widgets/bookRating.dart';
import 'package:waraq/features/home/presentation/views/widgets/books_action.dart';
import 'package:waraq/features/home/presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:waraq/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:waraq/features/home/presentation/views/widgets/similar_books_listview.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomBookDetailsAppbar(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.17),
                  child: CustomBookImage(),
                ),
                SizedBox(height: 43),
                Text(
                  'white Afair Book',
                  style: FontStyles.textStyle30.copyWith(fontFamily: 'Ancizar Serif'),
                ),
                SizedBox(height: 6),
                Text(
                  'J.k Rowling',
                  style: FontStyles.textStyle18.copyWith(
                    color: Colors.grey,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(height: 18),
                BookRating(mainAxisAlignment: MainAxisAlignment.center),
                const SizedBox(height: 37),
                BooksAction(),
                Expanded(child: SizedBox(height: 50)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You can also like',
                    style: FontStyles.textStyle14.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                SimilarBooksListview(),
                SizedBox(height: 30,)
              ],
            ),
          ),
        )
      ],
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomBookDetailsAppbar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.17),
            child: CustomBookImage(),
          ),
          SizedBox(height: 43),
          Text(
            'white Afair Book',
            style: FontStyles.textStyle30.copyWith(fontFamily: 'Ancizar Serif'),
          ),
          SizedBox(height: 6),
          Text(
            'J.k Rowling',
            style: FontStyles.textStyle18.copyWith(
              color: Colors.grey,
              fontStyle: FontStyle.italic,
            ),
          ),
          const SizedBox(height: 18),
          BookRating(mainAxisAlignment: MainAxisAlignment.center),
          const SizedBox(height: 37),
          BooksAction(),
          Expanded(child: SizedBox(height: 50)),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You can also like',
              style: FontStyles.textStyle14.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 15),
          SimilarBooksListview()
        ],
      ),
    );
  }
}
