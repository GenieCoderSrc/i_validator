import 'package:i_validator/i_validator.dart';

class ConfirmPasswordRequiredValidator extends IValidator<String> {
  @override
  String? validate(String? input) {
    if (input == null || input.isEmpty) {
      return kConfirmPasswordMismatchError;
    }
    return null;
  }
}
