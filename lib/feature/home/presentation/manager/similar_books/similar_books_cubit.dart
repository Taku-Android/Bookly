

import 'package:bookly/feature/home/presentation/manager/similar_books/similar_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repo/home_repo.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());

  final HomeRepo homeRepo;

  fetchSimilarBooks(category) async {
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category);

    result.fold((failure) => emit(SimilarBooksFailure(failure.errMessage)),
            (books) => emit(SimilarBooksSuccess(books)));
  }

}
