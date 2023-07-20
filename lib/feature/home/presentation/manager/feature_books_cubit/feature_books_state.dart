
import '../../../data/model/BookModel.dart';

abstract class FeatureBooksState {}

class FeatureBooksInitial extends FeatureBooksState {}


class FeatureBooksLoading extends FeatureBooksState {}
class FeatureBooksSuccess extends FeatureBooksState {

  final List<BookModel> books ;

  FeatureBooksSuccess(this.books);

}
class FeatureBooksFailure extends FeatureBooksState {

  final String errMessage ;

   FeatureBooksFailure(this.errMessage);

}
