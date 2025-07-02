import 'i_validator.dart';

// ✅ Min length for string
class MinLengthValidator extends IValidator<String> {
  final int min;

  MinLengthValidator(this.min);

  @override
  String? validate(String? value) {
    if (value == null || value.length < min) {
      return 'Minimum $min characters required';
    }
    return null;
  }
}


