import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/feature/home/data/model/BookModel.dart';
import 'package:bookly/feature/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewSetBook() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?q=subject:computer science&Filtering=free-ebooks&Sorting=newest');

      List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
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
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks() {
    throw UnimplementedError();
  }
}
