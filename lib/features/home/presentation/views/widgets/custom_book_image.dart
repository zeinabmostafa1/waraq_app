import 'package:flutter/material.dart';
import 'package:waraq/core/utils/utils.dart';

class CustomBookImage extends StatelessWidget {
   const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        margin: EdgeInsets.all(7),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            fit: BoxFit.fill,
              image: AssetImage(AssetsData.book1)),
        ),
      ),
    );
  }
}
