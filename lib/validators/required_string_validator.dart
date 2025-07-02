import 'i_validator.dart';

// ✅ Required String
class RequiredStringValidator extends IValidator<String> {
  @override
  String? validate(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'This field is required';
    }
    return null;
  }
}
