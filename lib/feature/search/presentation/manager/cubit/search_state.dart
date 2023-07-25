import 'package:bookly/core/model/BooksModel.dart';

abstract class SearchState {}

class SearchInitial extends SearchState {}
class SearchLoading extends SearchState {}
class SearchSuccess extends SearchState {
  final BooksModel books ;
  SearchSuccess(this.books);
}
class SearchFailure extends SearchState {

  final String errMessage ;

  SearchFailure(this.errMessage);

}
