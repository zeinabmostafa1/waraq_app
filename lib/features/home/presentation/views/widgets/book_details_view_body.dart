import 'package:flutter/material.dart';
import 'package:waraq/core/utils/font_styles.dart';
import 'package:waraq/features/home/presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:waraq/features/home/presentation/views/widgets/custom_book_image.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:30),
      child: Column(
        children: [
          CustomBookDetailsAppbar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.17),
            child: CustomBookImage(),
          ),
          SizedBox(height: 43,),
          Text('white Afair Book', style: FontStyles.textStyle30.copyWith(fontFamily: 'Ancizar Serif'),),
          SizedBox(height: 6,),
          Text('J.k Rowling', style: FontStyles.textStyle18.copyWith(color: Colors.grey ,fontStyle: FontStyle.italic),),

        ],
      ),
    );
  }
}
