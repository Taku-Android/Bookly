
import 'package:bookly/feature/home/data/repo/home_repo.dart';
import 'package:bookly/feature/home/presentation/manager/feature_books_cubit/feature_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit(this.homeRepo) : super(FeatureBooksInitial());

  final HomeRepo homeRepo ;

   fetchFeatureBooks() async {

    emit(FeatureBooksLoading());
    var result = await homeRepo.fetchFeatureBooks();

    result.fold(
            (failure) => emit(FeatureBooksFailure(failure.errMessage)),
            (books) => emit(FeatureBooksSuccess(books)));


  }

}
