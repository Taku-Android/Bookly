
import 'package:bookly/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/model/BooksModel.dart';


abstract class SearchRepo{

  Future<Either<Failure ,BooksModel>> searchForBooks(subject);

}