import 'package:flutter/material.dart';
import 'package:waraq/core/styles.dart';
import 'package:waraq/core/utils.dart';
import 'package:waraq/features/home/presentation/views/widgets/bookRating.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.7 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AssetsData.book2)),
              ),
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text('White Affair', style: Styles.textStyle20.copyWith(fontFamily: 'Ancizar Serif'), overflow: TextOverflow.ellipsis, maxLines: 2,)),
                SizedBox(height: 4,),
                Text('J.K Rowling', style: Styles.textStyle14.copyWith(color: Colors.grey),),
                SizedBox(height: 4,),
                Row(
                  children: [
                    Text('19.99\$', style: Styles.textStyle20,),
                    Spacer(),
                    BookRating(),
                      ],
                    )
                  ],
                ),
          )
            ],
          )
    );
  }
}
