import 'package:dio/dio.dart';
import 'package:todo_app/features/auth/model/login_model.dart';
import 'package:todo_app/features/auth/view/register_view.dart';

class LoginResponse {
  Future<dynamic> login(String userName, String password) async {
    try {
      final response = await dio.post(
        'login',
        data: FormData.fromMap({'username': userName, 'password': password}),
      );

      return LoginModel.formJson(response.data);
    } on DioException catch (e) {
      throw e;
    }
  }
}
