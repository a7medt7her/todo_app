import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  bool isVisible1 = true;
  static LoginCubit get(context) => BlocProvider.of(context);

  var userNameController = TextEditingController();
  var passwordController = TextEditingController();
  void passwordViability() {
    isVisible1 = !isVisible1;
    emit(PasswordViability());
  }
}
