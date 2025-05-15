import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:waraq/constants.dart';

import 'features/splash/presentaion/views/splash_view.dart';

void main() {
  runApp(const WaraqApp());
}

class WaraqApp extends StatelessWidget {
  const WaraqApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),),
      home: SplashView(),
    );
  }
}
