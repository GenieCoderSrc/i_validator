import 'package:i_validator/i_validator.dart';

class MinValueValidator<T extends num> extends IValidator<T> {
  final T min;

  MinValueValidator({required this.min});

  @override
  String? validate(T? input) {
    if (input == null) return 'This field is required';
    if (input < min) return 'Value must be at least $min';
    return null;
  }
}
