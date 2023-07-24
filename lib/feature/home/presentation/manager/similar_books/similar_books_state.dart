
import '../../../data/model/BooksModel.dart';

abstract class SimilarBooksState {}

class SimilarBooksInitial extends SimilarBooksState {}
class SimilarBooksLoading extends SimilarBooksState {}
class SimilarBooksSuccess extends SimilarBooksState {
  final BooksModel books ;

  SimilarBooksSuccess(this.books);
}
class SimilarBooksFailure extends SimilarBooksState {
  final String errMessage ;

  SimilarBooksFailure(this.errMessage);

}
