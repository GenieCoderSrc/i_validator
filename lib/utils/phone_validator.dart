import 'constant/error_msg_constant.dart';
import 'constant/reg_constant.dart';
import 'i_validator.dart';

class PhoneNumberValidator implements IValidator {
  @override
  String? validate(String mobile) =>
      phoneNumberPattern.hasMatch(mobile) ? null : invalidPhoneNumber;
}
