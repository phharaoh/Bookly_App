import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsetsGeometry.symmetric(vertical: 50, horizontal: 20),
        ),
        Image.asset('assets/images/Logo.png', height: 20),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(FontAwesomeIcons.magnifyingGlass),
        ),
      ],
    );
  }
}