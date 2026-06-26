import 'package:dio/dio.dart';

class ErrorMassage {
  static String errorMessage(Object e) {
    if (e is DioException) {
      return e.response?.data["message"] ?? "Unknown error";
    }
    print(e);
    return "$e";
  }
}
