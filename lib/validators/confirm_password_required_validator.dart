import 'package:i_validator/i_validator.dart';

class ConfirmPasswordRequiredValidator implements IValidator<String> {
  @override
  String? validate(String input) =>
      input.isEmpty ? kConfirmPasswordMismatchError : null;
}
