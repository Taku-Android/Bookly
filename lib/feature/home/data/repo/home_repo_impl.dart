import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/feature/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/model/BooksModel.dart';


class HomeRepoImpl extends HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, BooksModel>> fetchNewSetBook() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?q=subject:computer science&Filtering=free-ebooks&Sorting=newest');


     return right(data);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerError.fromDioError(e),
        );
      }
      return left(
        ServerError(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, BooksModel>> fetchFeatureBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
          'volumes?q=subject:programming&Filtering=free-ebooks');
      return right(data);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerError.fromDioError(e),
        );
      }
      return left(
        ServerError(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, BooksModel>> fetchSimilarBooks({required String category}) async {
    try {
      var data = await apiService.get(
          endPoint:
          'volumes?q=subject:computer science&Filtering=free-ebooks&Sorting=relevance');
      return right(data);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerError.fromDioError(e),
        );
      }
      return left(
        ServerError(
          e.toString(),
        ),
      );
    }
  }
}
