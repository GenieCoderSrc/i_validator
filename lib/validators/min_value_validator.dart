import 'package:i_validator/i_validator.dart';

class MinValueValidator extends IValidator<String> {
  final num min;
  final String error;

  MinValueValidator({required this.min, this.error = "Invalid value"});

  @override
  String? validate(String? input) {
    if (input == null || input.trim().isEmpty) {
      return 'This field is required';
    }

    final num? value = num.tryParse(input);
    if (value == null) return error;

    if (value < min) return 'Value must be at least $min';

    return null;
  }
}
