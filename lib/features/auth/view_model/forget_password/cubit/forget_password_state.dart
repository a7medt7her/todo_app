part of 'forget_password_cubit.dart';

@immutable
sealed class ForgetPasswordState {}

final class ForgetPasswordInitial extends ForgetPasswordState {}

final class OldPassword extends ForgetPasswordState {}

final class NewPassword extends ForgetPasswordState {}

final class ConfirmPassword extends ForgetPasswordState {}
