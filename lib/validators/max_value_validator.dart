import 'package:i_validator/i_validator.dart';

class MaxValueValidator<T extends num> extends IValidator<T> {
  final T max;

  MaxValueValidator({required this.max});

  @override
  String? validate(T? input) {
    if (input == null) return 'This field is required';
    if (input > max) return 'Value must be at most $max';
    return null;
  }
}
