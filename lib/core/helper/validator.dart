abstract class AppValidator {
  static String? requiredValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter value';
    }
    return null;
  }

  static String? validateEmail(String? value) {
    var emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(value ?? '')) {
      return 'Please enter valid email';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Please enter a password';
    } else if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }

  static String? validateConfirmPassword(String? value, String password) {
    if (value == null || value.trim().isEmpty) {
      return 'Please enter your password confirmation';
    } else if (value != password) {
      return 'Passwords do not match';
    }
    return null;
  }

  static String? phoneValidator(String? value) {
    var regex = RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$');
    if (!regex.hasMatch(value ?? "")) {
      return 'Please enter valid phone number';
    }
    return null;
  }
}
