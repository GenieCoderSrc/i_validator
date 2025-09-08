import 'i_validator.dart';

// Generic number (int or double)
class NumberValidator extends IValidator<num> {
  final String error;

  NumberValidator({this.error = "Invalid number"});

  @override
  String? validate(num? value) {
    if (value == null) return error;
    return null;
  }
}
