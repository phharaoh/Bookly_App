import 'books_action.dart';
import 'custom_book_item.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: const CustomBookImage(
            imageUrl:
                'https://images-na.ssl-images-amazon.com/images/I/51Zymoq7UnL._SX329_BO1,204,203,200_.jpg',
          ),
        ),
        const SizedBox(height: 43),
        Text(
          'The Jungle Book',
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 6),
        Opacity(
          opacity: .7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 18),
        // const BookRating(mainAxisAlignment: MainAxisAlignment.center, count: null,, rate: null,),
        const SizedBox(height: 37),
        const BooksAction(),
      ],
    );
  }
}
