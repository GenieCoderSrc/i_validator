import 'i_validator.dart';

// Integer only
class IntegerValidator extends IValidator<num> {
  final String error;

  IntegerValidator({this.error = "Value must be an integer"});

  @override
  String? validate(num? value) {
    if (value == null || value % 1 != 0) return error;
    return null;
  }
}
