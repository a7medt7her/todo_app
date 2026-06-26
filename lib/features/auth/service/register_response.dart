import 'package:dio/dio.dart';
import 'package:todo_app/features/auth/view/register_view.dart';

class RegisterResponse {
  Future register(String userName, String password) async {
    try {
      var response = await dio.post(
        'register',
        data: FormData.fromMap({'username': userName, 'password': password}),
      );
      return response.data["message"];
    } catch (e) {
      throw e;
    }
  }
}
