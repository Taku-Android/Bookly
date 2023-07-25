import 'package:dio/dio.dart';

import '../model/BooksModel.dart';

class ApiService{

  final _baseUrl = 'https://www.googleapis.com/books/v1/';

  final  Dio _dio ;

  ApiService(this._dio);

  Future<BooksModel> get({required String endPoint}) async {
     var response = await _dio.get('$_baseUrl$endPoint');
     return BooksModel.fromJson(response.data)  ;

  }





}