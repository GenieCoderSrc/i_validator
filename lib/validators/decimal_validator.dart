import 'i_validator.dart';

// Decimal (non-integer)
class DecimalValidator extends IValidator<String> {
  final String error;

  DecimalValidator({this.error = "Enter a valid decimal number"});

  @override
  String? validate(String? input) {
    if (input == null || input.trim().isEmpty) return error;

    if (double.tryParse(input) == null) return error;

    return null;
  }
}
