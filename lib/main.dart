import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/splash/views/splash_view.dart';
import 'package:bookly_app/core/colors/app_colors.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/repo/impl_repo.dart';
import 'package:bookly_app/features/home/manager/newestBookCubit/newest_book_cubit.dart';
import 'package:bookly_app/features/home/manager/feaureBookCubit/feaure_book_cubit.dart';

void main() {
  setupServiceLocator();

  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeaturedBooksCubit(getIt.get<HomeRepoImpl>())
                ..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) =>
              NewsetBooksCubit(getIt.get<HomeRepoImpl>())..fetchNewestBooks(),
        ),
      ],

      child: MaterialApp(
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: AppColors.primaryColor,
        ),

        home: SplashView(),
      ),
    );
  }
}
