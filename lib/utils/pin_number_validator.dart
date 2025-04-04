import 'constant/error_msg_constant.dart';
import 'constant/reg_constant.dart';
import 'i_validator.dart';

class PinNumberValidation implements IValidator {
  @override
  String? validate(String code) =>
      pinNumber.hasMatch(code) ? null : invalidPinNumber;
}