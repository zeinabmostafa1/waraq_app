import 'package:flutter/material.dart';
import 'package:waraq/core/utils/utils.dart';
import 'package:waraq/features/home/presentation/views/widgets/custom_book_image.dart';

class CustomListView extends StatelessWidget {
   CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
           return CustomBookImage();
          },
      ),

    );
  }

  }
