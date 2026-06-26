// import 'package:dio/dio.dart';
// import 'package:todo_app/core/helper/errorMassage.dart';

// final Dio dio = Dio(
//   BaseOptions(baseUrl: 'https://ntitodo-production-4d57.up.railway.app/api/'),
// );
// String accessToken = '';
// String refreshToken = '';

// class Service {
//   static Future register(String userName, String password) async {
//     try {
//       var response = await dio.post(
//         'register',
//         data: FormData.fromMap({'username': userName, 'password': password}),
//       );
//       print(response.data);
//     } catch (e) {
//       ErrorMassage.errorMessage(e);
//     }
//   }

//   static Future login(String userName, String password) async {
//     try {
//       var response = await dio.post(
//         'login',
//         data: FormData.fromMap({'username': userName, 'password': password}),
//       );
//       accessToken = response.data['access_token'];
//       refreshToken = response.data['refresh_token'];
//       print('accessToken: $accessToken');
//       print('refreshToken: $refreshToken');
//     } catch (e) {
//       ErrorMassage.errorMessage(e);
//     }
//   }

//   static Future changePassword(
//     String currentPassword,
//     String newPassword,
//   ) async {
//     try {
//       var response = await dio.post(
//         'change_password',
//         data: FormData.fromMap({
//           'current_password': currentPassword,
//           'new_password': newPassword,
//           'new_password_confirm': newPassword,
//         }),
//         options: Options(headers: {'Authorization': 'Bearer $accessToken'}),
//       );
//       print(response.data['message']);
//     } catch (e) {
//       ErrorMassage.errorMessage(e);
//     }
//   }

//   static Future refreshTokenFunc() async {
//     try {
//       var response = await dio.post(
//         'refresh_token',
//         options: Options(headers: {'Authorization': 'Bearer $refreshToken'}),
//       );
//       accessToken = response.data['access_token'];
//     } catch (e) {
//       ErrorMassage.errorMessage(e);
//     }
//   }

//   static Future updateProfile(String newUserName) async {
//     try {
//       var response = await dio.post(
//         'update_profile',
//         data: FormData.fromMap({'username': newUserName}),
//         options: Options(headers: {'Authorization': 'Bearer $accessToken'}),
//       );
//       print(response.data['message']);
//     } catch (e) {
//       ErrorMassage.errorMessage(e);
//     }
//   }

//   static Future getUserData() async {
//     try {
//       var response = await dio.get(
//         'get_user_data',
//         options: Options(headers: {'Authorization': 'Bearer $accessToken'}),
//       );
//       print(response.data);
//     } catch (e) {
//       ErrorMassage.errorMessage(e);
//     }
//   }

//   static Future deleteUser() async {
//     try {
//       var response = await dio.delete(
//         'delete_user',
//         options: Options(headers: {'Authorization': 'Bearer $accessToken'}),
//       );
//       print(response.data);
//     } catch (e) {
//       ErrorMassage.errorMessage(e);
//     }
//   }

//   static Future addTask(String title, String description) async {
//     var response = await dio.post(
//       'new_task',
//       data: FormData.fromMap({
//         'title': 'task',
//         'description': 'task description',
//       }),
//       options: Options(headers: {'Authorization': 'Bearer $accessToken'}),
//     );
//     print(response.data);
//   }

//   static Future updateTask(String newTitle, String newDescription) async {
//     var response = await dio.put(
//       'tasks/1',
//       data: FormData.fromMap({
//         'title': 'updated task',
//         'description': 'updated task description',
//       }),
//       options: Options(headers: {'Authorization': 'Bearer $accessToken'}),
//     );
//     print(response.data);
//   }

//   static Future getTasks() async {
//     var response = await dio.get(
//       'my_tasks',
//       options: Options(headers: {'Authorization': 'Bearer $accessToken'}),
//     );
//     print(response.data);
//   }

//   static Future deleteTask(String id) async {
//     var response = await dio.delete(
//       'tasks/$id',
//       options: Options(headers: {'Authorization': 'Bearer $accessToken'}),
//     );
//     print(response.data);
//   }
// }
