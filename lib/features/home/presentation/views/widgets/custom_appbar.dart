import 'package:flutter/material.dart';
import 'package:waraq/core/utils/utils.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(AssetsData.logo2, height: 80, width: 80,),
          IconButton(onPressed: (){}, icon: Icon(Icons.search, size: 28,)),
        ],
      ),
    );
  }
}
