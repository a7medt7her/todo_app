part of 'login_cubit.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}

final class PasswordViability extends LoginState {}

final class LoadingState extends LoginState {}

final class SuccessState extends LoginState {
  final LoginModel? response;

  SuccessState({required this.response});
}

final class ErrorState extends LoginState {
  final String? errorMassage;
  ErrorState({required this.errorMassage});
}
