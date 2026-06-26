import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:todo_app/core/helper/errorMassage.dart';
import 'package:todo_app/features/auth/model/login_model.dart';
import 'package:todo_app/features/auth/service/login_respones.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  final LoginResponse loginResponse = LoginResponse();
  bool isVisible1 = true;
  static LoginCubit get(context) => BlocProvider.of(context);

  var userNameController = TextEditingController();
  var passwordController = TextEditingController();
  void passwordViability() {
    isVisible1 = !isVisible1;
    emit(PasswordViability());
  }

  Future<void> login() async {
    print("Login Started");
    emit(LoadingState());

    try {
      final data = await loginResponse.login(
        userNameController.text,
        passwordController.text,
      );

      emit(SuccessState(response: data));
    } catch (e) {
      final message = ErrorMassage.errorMessage(e);
      emit(ErrorState(errorMassage: message));
    }
  }
}
