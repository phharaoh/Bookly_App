import 'package:flutter/material.dart';
import 'package:bookly_app/features/home/widgets/custom_appbar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Column(children: [CustomAppBar()]));
  }
}
