import 'i_validator.dart';

// Negative number (< 0)
class NegativeNumberValidator extends IValidator<num> {
  final String error;

  NegativeNumberValidator({this.error = "Value must be negative"});

  @override
  String? validate(num? value) {
    if (value == null || value >= 0) return error;
    return null;
  }
}
