import 'package:i_validator/i_validator.dart';

/// Validates email format
class EmailValidator extends IValidator<String> {
  final String pattern = patternEmail;

  @override
  String? validate(String? input) {
    if (input == null || input.trim().isEmpty) {
      return kEmailRequiredError;
    }
    if (!RegExp(pattern).hasMatch(input)) {
      return kEmailInvalidError;
    }
    return null;
  }
}
