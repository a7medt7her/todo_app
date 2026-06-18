import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());
  static RegisterCubit get(context) => BlocProvider.of(context);
  bool isVisible1 = true;
  bool isVisible2 = true;
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  void passwordViability() {
    isVisible1 = !isVisible1;
    emit(PasswordViability());
  }

  void confirmPasswordViability() {
    isVisible2 = !isVisible2;
    emit(ConfirmPasswordViability());
  }
}
