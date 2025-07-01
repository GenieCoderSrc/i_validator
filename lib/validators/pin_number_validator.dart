import 'package:i_validator/i_validator.dart';

/// Validates a PIN number (4 or 6 digits)
class PinNumberValidator extends IValidator<String> {
  @override
  String? validate(String? input) {
    if (input == null || input.trim().isEmpty) {
      return kOtpRequiredError;
    }
    if (!RegExp(patternPin).hasMatch(input)) {
      return kPinNumberInvalidError;
    }
    return null;
  }
}

// class PinNumberValidation implements IValidator<String>  {
//   @override
//   String? validate(String value) =>
//       pinNumber.hasMatch(value) ? null : invalidPinNumber;
// }
