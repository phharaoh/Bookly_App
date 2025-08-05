import 'book_rating.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'package:bookly_app/features/home/views/book_details_views.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => BookDetailsView()));
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            CustomBookImage(
              imageUrl:
                  bookModel.volumeInfo.imageLinks?.thumbnail ??
                  'assets/images/test_image.png',
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      bookModel.volumeInfo.title ?? 'No Title',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20.copyWith(
                      ),
                    ),
                  ),
                  const SizedBox(height: 3),

                  Text(
                    bookModel.volumeInfo.authors?.first ?? 'Unknown Author',
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      BookRating(
                        mainAxisAlignment: MainAxisAlignment.start,
                        count: bookModel.volumeInfo.ratingsCount?? 00,
                        rate: bookModel.volumeInfo.averageRating??000,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
