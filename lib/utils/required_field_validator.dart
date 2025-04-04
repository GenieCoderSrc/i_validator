// ignore_for_file: unnecessary_null_comparison

import 'constant/error_msg_constant.dart';
import 'i_validator.dart';

class RequiredFieldValidator implements IValidator {
  final bool requiredField;

  RequiredFieldValidator({this.requiredField = true});

  @override
  String? validate(String txt) =>
      (requiredField && txt.length != null && txt.isNotEmpty)
          ? null
          : requiredFieldError;
}
