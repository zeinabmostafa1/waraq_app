import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:waraq/core/utils/app_routes.dart';
import 'package:waraq/core/utils/font_styles.dart';
import 'package:waraq/core/utils/utils.dart';
import 'package:waraq/features/home/data/models/book_model.dart';
import 'package:waraq/features/home/presentation/views/widgets/bookRating.dart';
import 'package:waraq/features/home/presentation/views/widgets/custom_book_image.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRoutes.kBookDetails);
      },
      child: SizedBox(
        height: 150,
        child: Row(
          children: [
            CustomBookImage(
              imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
            ),
            SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      bookModel.volumeInfo.title ?? 'unknown',
                      style: FontStyles.textStyle20.copyWith(
                        fontFamily: 'Ancizar Serif',
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    bookModel.volumeInfo.authors![0],
                    style: FontStyles.textStyle14.copyWith(color: Colors.grey),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Text('Free', style: FontStyles.textStyle16),
                      Spacer(),
                      BookRating(rating: bookModel.volumeInfo.averageRating ?? 0,
                      count: bookModel.volumeInfo.ratingsCount ?? 0,),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
