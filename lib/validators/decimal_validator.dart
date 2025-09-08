import 'i_validator.dart';

// Decimal (non-integer)
class DecimalValidator extends IValidator<num> {
  final String error;

  DecimalValidator({this.error = "Value must be a decimal number"});

  @override
  String? validate(num? value) {
    if (value == null || value % 1 == 0) return error;
    return null;
  }
}
