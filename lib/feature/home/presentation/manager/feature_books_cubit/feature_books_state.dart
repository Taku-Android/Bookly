
abstract class FeatureBooksState {}

class FeatureBooksInitial extends FeatureBooksState {}


class FeatureBooksLoading extends FeatureBooksState {}
class FeatureBooksSuccess extends FeatureBooksState {}
class FeatureBooksFailure extends FeatureBooksState {

  String errMessage ;

  FeatureBooksFailure(this.errMessage);

}
