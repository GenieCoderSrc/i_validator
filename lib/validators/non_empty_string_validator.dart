import 'package:i_validator/i_validator.dart';

/// Validates a non-empty string
class NonEmptyStringValidator extends IValidator<String> {
  @override
  String? validate(String? value) {
    if (value == null || value.trim().isEmpty) {
      return kNonEmptyError;
    }
    return null;
  }
}
