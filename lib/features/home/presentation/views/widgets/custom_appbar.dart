import 'package:flutter/material.dart';
import 'package:waraq/core/utils.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(AssetsData.logo, height: 60, width: 60,),
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
        ],
      ),
    );
  }
}
