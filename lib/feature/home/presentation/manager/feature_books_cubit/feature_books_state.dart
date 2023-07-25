
import '../../../../../core/model/BooksModel.dart';

abstract class FeatureBooksState {}

class FeatureBooksInitial extends FeatureBooksState {}


class FeatureBooksLoading extends FeatureBooksState {}
class FeatureBooksSuccess extends FeatureBooksState {

  final BooksModel books ;

  FeatureBooksSuccess(this.books);

}
class FeatureBooksFailure extends FeatureBooksState {

  final String errMessage ;

   FeatureBooksFailure(this.errMessage);

}
