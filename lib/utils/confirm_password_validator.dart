import 'constant/error_msg_constant.dart';
import 'constant/reg_constant.dart';
import 'i_validator.dart';

class ConfirmPasswordValidator implements IValidator {
  final String? password;

  ConfirmPasswordValidator({required this.password});

  @override
  String? validate(String confirmPassword) =>
      !easyPassword.hasMatch(confirmPassword)
          ? confirmPassword == checkConfirmPassword
              ? checkConfirmPassword
              : invalidConfirmPassword
          : password != confirmPassword
              ? confirmPasswordDoesNotMatch
              : null;
}

class ConfirmPasswordRequiredValidator implements IValidator {
  @override
  String? validate(String confirmPassword) =>
      confirmPassword.isEmpty ? confirmPasswordDoesNotMatch : null;
}
