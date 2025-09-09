import 'package:i_validator/i_validator.dart';

class MaxValueValidator extends IValidator<String> {
  final num max;

  MaxValueValidator({required this.max});

  @override
  String? validate(String? input) {
    if (input == null || input.trim().isEmpty) {
      return 'This field is required';
    }

    final num? value = num.tryParse(input);
    if (value == null) return 'Invalid number';

    if (value > max) return 'Value must be at most $max';

    return null;
  }
}
