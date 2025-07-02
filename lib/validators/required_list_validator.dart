
// ✅ Required non-empty list
import 'i_validator.dart';

class RequiredListValidator<T> extends IValidator<List<T>> {
  @override
  String? validate(List<T>? value) {
    if (value == null || value.isEmpty) {
      return 'Please select at least one option';
    }
    return null;
  }
}