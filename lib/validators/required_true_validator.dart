import 'package:i_validator/constant/validation_messages.dart';

import 'i_validator.dart';

// ✅ Required true (e.g. for terms & conditions checkbox)
class RequiredTrueValidator extends IValidator<bool> {
  final String error;

  RequiredTrueValidator({this.error = kMustBeEnabledError});

  @override
  String? validate(bool? value) {
    if (value != true) return error;
    return null;
  }
}
