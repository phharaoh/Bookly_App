import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, required MainAxisAlignment mainAxisAlignment, required this.count, required this.rate});

  final int count;
  final num rate;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(FontAwesomeIcons.solidStar, color: Color(0xffFFDD4F)),
        const SizedBox(width: 6.3),
         Text('$rate', style: Styles.textStyle16),
        const SizedBox(width: 5),
        Text(
          '($count)',
          style: Styles.textStyle14.copyWith(color: const Color(0xff707070)),
        ),
      ],
    );
  }
}
