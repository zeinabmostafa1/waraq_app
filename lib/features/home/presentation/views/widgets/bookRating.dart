import 'package:flutter/material.dart';
import 'package:waraq/core/utils/font_styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star_rate_rounded, color: Colors.amber,),
        SizedBox(width: 6.3,),
        Text('4.8', style: FontStyles.textStyle16,),
        SizedBox(width: 5,),
        Text('(2457)', style: FontStyles.textStyle14.copyWith(color:
        Colors.grey),)
      ],
    );
  }
}
