import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/feature/home/data/model/BookModel.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{

  Future<Either< Failure, List<BookModel>>> fetchBestSellerBook();
  Future<Either< Failure, List<BookModel>>> fetchFeatureBooks();

}