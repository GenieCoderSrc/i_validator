import 'package:i_validator/i_validator.dart';

/// Validates an OTP code
class OtpValidator extends IValidator<String> {
  final int length;

  OtpValidator({this.length = 6});

  @override
  String? validate(String? input) {
    if (input == null || input.trim().isEmpty) {
      return kOtpRequiredError;
    }
    if (input.length != length) {
      return kOtpLengthFormat.replaceFirst('%d', length.toString());
    }
    if (!RegExp(patternOtp).hasMatch(input)) {
      return kOtpNumericError;
    }
    return null;
  }
}
