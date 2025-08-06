import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:waraq/constants.dart';
import 'package:waraq/core/utils/api_service.dart';
import 'package:waraq/core/utils/app_routes.dart';
import 'package:waraq/core/utils/service_locator.dart';
import 'package:waraq/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';

import 'features/home/data/repos/home_repo_impl.dart';
import 'features/home/presentation/manager/newest_books/newest_books_cubit.dart';
import 'features/splash/presentaion/views/splash_view.dart';

void main() {
  setupServiceLocator();
  runApp(const WaraqApp());
}

class WaraqApp extends StatelessWidget {
  const WaraqApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImpl>())..fetchFeaturedBooks()
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(getIt.get<HomeRepoImpl>())..fetchNewestBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRoutes.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
      ),
    );
  }
}
