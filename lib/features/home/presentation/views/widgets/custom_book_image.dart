import 'package:flutter/material.dart';
import 'package:waraq/core/utils/utils.dart';

class CustomListViewItem extends StatelessWidget {
   const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            fit: BoxFit.fill,
              image: AssetImage(AssetsData.book1)),
        ),
      ),
    );
  }
}
