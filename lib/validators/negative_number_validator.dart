import 'i_validator.dart';

// Negative number (< 0)
class NegativeNumberValidator extends IValidator<String> {
  final String error;

  NegativeNumberValidator({this.error = "Value must be negative"});

  @override
  String? validate(String? input) {
    if (input == null || input.trim().isEmpty) return error;

    final num? value = num.tryParse(input);
    if (value == null || value >= 0) return error;

    return null;
  }
}
