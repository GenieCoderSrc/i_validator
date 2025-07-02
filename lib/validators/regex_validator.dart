// ✅ Regex string validator (e.g. email)
import 'i_validator.dart';

class RegexValidator extends IValidator<String> {
  final String pattern;
  final String errorText;

  RegexValidator({required this.pattern, required this.errorText});

  @override
  String? validate(String? value) {
    if (value == null || !RegExp(pattern).hasMatch(value)) {
      return errorText;
    }
    return null;
  }
}
