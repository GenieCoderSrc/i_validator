import 'i_validator.dart';

// Positive number (> 0)
class PositiveNumberValidator extends IValidator<num> {
  final String error;

  PositiveNumberValidator({this.error = "Value must be positive"});

  @override
  String? validate(num? value) {
    if (value == null || value <= 0) return error;
    return null;
  }
}
