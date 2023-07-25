import 'package:bookly/feature/search/data/repo/search_repo.dart';
import 'package:bookly/feature/search/presentation/manager/cubit/search_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());

  final SearchRepo searchRepo;

  searchByCategory(subject) async {
    emit(SearchLoading());
    var result = await searchRepo.searchForBooks(subject);

    result.fold(
            (failure) => emit(SearchFailure(failure.errMessage)),
            (book) => emit(SearchSuccess(book),)
    );
  }

}
