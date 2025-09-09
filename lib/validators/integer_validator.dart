import 'i_validator.dart';

// Integer only
class IntegerValidator extends IValidator<String> {
  final String error;

  IntegerValidator({this.error = "Enter a valid integer"});

  @override
  String? validate(String? input) {
    if (input == null || input.trim().isEmpty) return error;

    if (int.tryParse(input) == null) return error;

    return null;
  }
}

