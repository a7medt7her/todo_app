part of 'register_cubit.dart';

@immutable
sealed class RegisterState {}

final class RegisterInitial extends RegisterState {}

final class PasswordViability extends RegisterState {}

final class ConfirmPasswordViability extends RegisterState {}
