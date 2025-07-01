import 'package:i_validator/i_validator.dart';

/// Validates a phone number (basic international or local format)
class PhoneNumberValidator extends IValidator<String> {
  final String pattern;

  PhoneNumberValidator({this.pattern = patternPhone});

  @override
  String? validate(String? input) {
    if (input == null || input.trim().isEmpty) {
      return kPhoneRequiredError;
    }
    if (!RegExp(pattern).hasMatch(input)) {
      return kPhoneInvalidError;
    }
    return null;
  }
}
