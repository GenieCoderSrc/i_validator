import 'constant/error_msg_constant.dart';
import 'constant/reg_constant.dart';
import 'i_validator.dart';

class EmailValidator implements IValidator {
  @override
  String? validate(String email) =>
      emailPattern.hasMatch(email) ? null : invalidEmail;
}
