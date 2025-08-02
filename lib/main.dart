import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'features/splash/views/splash_view.dart';
import 'package:bookly_app/core/colors/app_colors.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColors.primaryColor,
      ),

      home: SplashView(),
    );
  }
}
