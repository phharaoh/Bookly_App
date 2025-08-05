import 'package:equatable/equatable.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';

abstract class SimilarBooksState extends Equatable {
  @override
  List<Object?> get props => [];
}

class InitialState extends SimilarBooksState {}

class LoadingState extends SimilarBooksState {}

class SuccessState extends SimilarBooksState {
  final List<BookModel> books;

  SuccessState(this.books);
}

class FailureState extends SimilarBooksState {
  final String errorMessage;

  FailureState(this.errorMessage);
}
