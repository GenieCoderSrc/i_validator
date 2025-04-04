import 'constant/error_msg_constant.dart';
import 'constant/reg_constant.dart';
import 'i_validator.dart';

class OtpValidator implements IValidator {
  @override
  String? validate(String code) =>
      otpCode.hasMatch(code) ? null : invalidOtpCode;
}
