import 'package:i_validator/i_validator.dart';

/// Validates that confirm password matches the original password
class ConfirmPasswordValidator extends IValidator<String> {
  final String password;

  ConfirmPasswordValidator({required this.password});

  @override
  String? validate(String? input) {
    if (input == null || input.trim().isEmpty) {
      return kConfirmPasswordRequiredError;
    }
    if (input != password) {
      return kConfirmPasswordMismatchError;
    }
    return null;
  }
}

// class ConfirmPasswordValidator implements IValidator<String> {
//   final String? password;
//
//   ConfirmPasswordValidator({required this.password});
//
//   @override
//   String? validate(String value) =>
//       !easyPassword.hasMatch(value)
//           ? value == kConfirmPasswordRequiredError
//               ? kConfirmPasswordRequiredError
//               : invalidConfirmPassword
//           : password != value
//               ? confirmPasswordDoesNotMatch
//               : null;
// }
