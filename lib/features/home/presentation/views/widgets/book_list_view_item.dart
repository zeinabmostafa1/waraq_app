import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:waraq/core/utils/app_routes.dart';
import 'package:waraq/core/utils/font_styles.dart';
import 'package:waraq/core/utils/utils.dart';
import 'package:waraq/features/home/presentation/views/widgets/bookRating.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRoutes.kBookDetails);
      },
      child: SizedBox(
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
                      child: Text('White Affair', style: FontStyles.textStyle20.copyWith(fontFamily: 'Ancizar Serif'), overflow: TextOverflow.ellipsis, maxLines: 2,)),
                  SizedBox(height: 4,),
                  Text('J.K Rowling', style: FontStyles.textStyle14.copyWith(color: Colors.grey),),
                  SizedBox(height: 4,),
                  Row(
                    children: [
                      Text('19.99\$', style: FontStyles.textStyle20,),
                      Spacer(),
                      BookRating(),
                        ],
                      )
                    ],
                  ),
            )
              ],
            )
      ),
    );
  }
}
