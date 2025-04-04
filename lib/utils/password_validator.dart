import 'constant/error_msg_constant.dart';
import 'constant/reg_constant.dart';
import 'i_validator.dart';

class PasswordValidator implements IValidator {
  @override
  String? validate(String password) =>
      easyPassword.hasMatch(password) ? null : invalidStrongPassword;
}
