import 'i_validator.dart';

// Positive number (> 0)
class PositiveNumberValidator extends IValidator<String> {
  final String error;

  PositiveNumberValidator({this.error = "Value must be positive"});

  @override
  String? validate(String? input) {
    if (input == null || input.trim().isEmpty) return error;

    final num? number = num.tryParse(input);
    if (number == null || number <= 0) return error;

    return null;
  }
}
