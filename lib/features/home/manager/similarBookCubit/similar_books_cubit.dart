import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly_app/features/home/data/repo/home_repo.dart';
import 'package:bookly_app/features/home/manager/similarBookCubit/similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(InitialState());

  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(LoadingState());
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold(
      (failure) {
        emit(FailureState(failure.errMessage));
      },
      (books) {
        emit(SuccessState(books));
      },
    );
  }
}
