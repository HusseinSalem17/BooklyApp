//wrapper => is connectoin point between me and the service (i deal with wrapper) (class ApiSErvice)
import 'package:dio/dio.dart';

class ApiService {
  final baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio _dio;

  ApiService(this._dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await _dio.get(baseUrl + endPoint);
    //data return as Map
    return response.data;
  }
}
