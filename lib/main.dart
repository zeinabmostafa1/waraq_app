import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:waraq/constants.dart';
import 'package:waraq/core/utils/app_routes.dart';

import 'features/splash/presentaion/views/splash_view.dart';

void main() {
  runApp(const WaraqApp());
}

class WaraqApp extends StatelessWidget {
  const WaraqApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRoutes.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),),
    );
  }
}
