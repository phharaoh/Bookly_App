import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly_app/features/home/manager/feaureBookCubit/feaure_book_state.dart';
import 'package:bookly_app/features/home/manager/feaureBookCubit/feaure_book_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              itemCount: state.books.length,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: CustomBookImage(
                    imageUrl:
                        state.books[index].volumeInfo.imageLinks?.thumbnail ??
                        'assets/images/test_image.png',
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return Text(state.errMessage, style: TextStyle(color: Colors.red));
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
