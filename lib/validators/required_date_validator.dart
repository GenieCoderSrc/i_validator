// ✅ Required date
import 'i_validator.dart';

class RequiredDateValidator extends IValidator<DateTime> {
  @override
  String? validate(DateTime? value) {
    if (value == null) {
      return 'Date is required';
    }
    return null;
  }
}