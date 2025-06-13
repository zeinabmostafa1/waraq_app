import 'package:flutter/material.dart';
import 'package:waraq/core/utils/font_styles.dart';

class BookRating extends StatelessWidget {
   BookRating({super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
    mainAxisAlignment: mainAxisAlignment,
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
