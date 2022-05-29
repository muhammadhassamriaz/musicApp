import '../res/globals.dart';

extension StringManipulator on String {
  static getValidPassword(String? value) {
    if (value!.isEmpty) {
      return 'Please enter your password';
    }
    if (value.length < 8) {
      return 'Minimum length is 8';
    }
    bool hasUppercase = value.contains(RegExp(r'[A-Z]'));
    bool hasDigits = value.contains(RegExp(r'[0-9]'));
    bool hasLowercase = value.contains(RegExp(r'[a-z]'));
    bool hasSpecialCharacters =
        value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
    if (!hasUppercase || !hasDigits || !hasLowercase || !hasSpecialCharacters) {
      return 'At least 1 lowercase, 1 uppercase, 1 digit, and 1 special character is required.';
    }
    return null;
  }

  static getValidEmail(String? value) {
    if (value!.isEmpty) {
      return 'Please enter your email address.';
    }
    RegExp re = getEmailRegExp();
    if (re.hasMatch(value) == false) {
      return 'Please enter valid Email Address e.g, Jondoe@example.com';
    }
    return null;
  }

  static getValidFullName(String? value) {
    if (value!.isEmpty) {
      return 'Please enter your full name.';
    }
    RegExp re = getFullNameExp();
    if (re.hasMatch(value) == false) {
      return 'Please enter valid name.';
    }
    return null;
  }

  static getValidPhoneNumber(String? value) {
    if (value!.isEmpty) {
      return "Please enter phone number";
    }
    if (value.startsWith('+')) {
      return 'Please enter number without +';
    }
    if (double.tryParse(value) == null) {
      return 'Please enter valid phone number';
    }
    return null;
  }

  static getValidUsername(String? value) {
    if (value!.isEmpty) {
      return 'Please enter your username.';
    }
    RegExp re = getUsernameExp();
    if (re.hasMatch(value) == false) {
      return 'Please enter valid username.';
    }
    return null;
  }
}
