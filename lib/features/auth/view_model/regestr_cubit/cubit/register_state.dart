part of 'register_cubit.dart';

@immutable
sealed class RegisterState {}

final class RegisterInitial extends RegisterState {}

final class PasswordViability extends RegisterState {}

final class ConfirmPasswordViability extends RegisterState {}

final class LoadingState extends RegisterState {}

final class SuccessState extends RegisterState {
  final String? message;
  SuccessState({this.message});
}

final class ErrorState extends RegisterState {
  final String? errorMessage;
  ErrorState({this.errorMessage});
}
