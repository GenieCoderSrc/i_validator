import 'package:i_validator/i_validator.dart';

/// Validates a password
class PasswordValidator extends IValidator<String> {
  final int? minLength;
  final int? maxLength;
  final PasswordStrength? strength;

  PasswordValidator({this.minLength, this.maxLength, this.strength});

  @override
  String? validate(String? input) {
    if (input == null || input.trim().isEmpty) {
      return kPasswordRequiredError;
    }
    if (minLength != null && input.length < minLength!) {
      return kPasswordLengthFormat.replaceFirst('%d', minLength.toString());
    }
    if (maxLength != null && input.length > maxLength!) {
      return 'Password must be at most \$maxLength characters';
    }
    final String? pattern = switch (strength) {
      PasswordStrength.easy => patternPasswordEasy,
      PasswordStrength.medium => patternPasswordMedium,
      PasswordStrength.strong => patternPasswordStrong,
      _ => null,
    };
    if (pattern != null && !RegExp(pattern).hasMatch(input)) {
      return kPasswordInvalidError;
    }
    return null;
  }

 
}
