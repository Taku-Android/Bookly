
import 'package:bookly/feature/home/data/repo/home_repo.dart';
import 'package:bookly/feature/home/presentation/manager/newest_books_cubit/newest_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  final HomeRepo homeRepo ;

  Future<void> fetchNewestBooks() async {

    emit(NewestBooksLoading());
    var result = await homeRepo.fetchNewSetBook();

    result.fold(
            (failure) => emit(NewestBooksFailure(failure.errMessage)),
            (books) => emit(NewestBooksSuccess(books)));


  }

}
