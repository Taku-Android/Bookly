import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/feature/home/data/model/BooksModel.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, BooksModel>> fetchNewSetBook();

  Future<Either<Failure, BooksModel>> fetchFeatureBooks();
}
