import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/splash/presentaion/views/splash_view.dart';

void main() {
  runApp(const WaraqApp());
}

class WaraqApp extends StatelessWidget {
  const WaraqApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SplashView(),
    );
  }
}
