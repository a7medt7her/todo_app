class AppValidator {
  static String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'inter your email';
    }
    final simpleEmailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+$');
    if (!simpleEmailRegex.hasMatch(value)) {
      return 'invalid email';
    }
    return null;
  }

  static String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'inter your password';
    } else if (value.length < 6) {
      return "password can't be less than 6 charater";
    }
    return null;
  }

  static String? passwordConfirmValidator(
    String? value,
    String? currentPassword,
  ) {
    if (value == null || value.isEmpty) {
      return 'inter your password';
    } else if (value != currentPassword) {
      return "incorrect password";
    }
    return null;
  }
}
