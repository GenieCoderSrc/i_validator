import 'i_validator.dart';

// Generic number (int or double)
class NumberValidator extends IValidator<String> {
  final String error;

  NumberValidator({this.error = "Invalid number"});

  @override
  String? validate(String? input) {
    if (input == null || input.trim().isEmpty) return error;

    if (num.tryParse(input) == null) return error;

    return null;
  }
}
