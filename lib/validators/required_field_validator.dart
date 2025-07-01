import 'package:i_validator/i_validator.dart';

/// Validates that value is not null (generic)
class RequiredFieldValidator<T> extends IValidator<T> {
  @override
  String? validate(T? input) {
    if (input == null) {
      return kGenericRequiredError;
    }
    return null;
  }
}

// class RequiredFieldValidator implements IValidator<String>  {
//   final bool requiredField;
//
//   RequiredFieldValidator({this.requiredField = true});
//
//   @override
//   String? validate(String value) =>
//       (requiredField && value.length != null && value.isNotEmpty)
//           ? null
//           : requiredFieldError;
// }
