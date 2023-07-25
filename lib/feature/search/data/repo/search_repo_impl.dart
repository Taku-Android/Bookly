import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/feature/home/data/model/BooksModel.dart';
import 'package:bookly/feature/search/data/repo/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../../core/utils/api_service.dart';

class SearchRepoImpl extends SearchRepo{

  final ApiService apiService ;

  SearchRepoImpl(this.apiService);

  @override
  Future<Either<Failure ,BooksModel>> searchForBooks(subject) async  {

    try {
      var result = await apiService.get(endPoint: 'volumes?q=subject:$subject&Filtering=free-ebooks&Sorting=newest');



      return right(result);
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