
import 'package:bookly/feature/home/presentation/manager/feature_books_cubit/feature_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit() : super(FeatureBooksInitial());


}
