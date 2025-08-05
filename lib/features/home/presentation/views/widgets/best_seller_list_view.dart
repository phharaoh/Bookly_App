import 'package:flutter/material.dart';
import 'best_seller_list_view_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly_app/features/home/manager/newestBookCubit/newest_book_state.dart';
import 'package:bookly_app/features/home/manager/newestBookCubit/newest_book_cubit.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksSuccess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: BookListViewItem(bookModel: state.books[index]),
              );
            },
          );
        } else if (state is NewsetBooksFailure) {
          return Center(child: Text(state.errMessage));
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
