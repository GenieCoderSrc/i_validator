import 'dart:async';

import 'package:i_validator/validators/confirm_password_validator.dart';
import 'package:i_validator/validators/email_validator.dart';
import 'package:i_validator/validators/required_field_validator.dart';

import '../validators/otp_validation.dart';
import '../validators/password_validator.dart';
import '../validators/phone_validator.dart';

mixin ValidatorMixin {
  StreamTransformer<String, String> passwordValidator =
      StreamTransformer<String, String>.fromHandlers(
        handleData: (String password, EventSink<String> sink) {
          final String? error = PasswordValidator().validate(password);
          error != null ? sink.addError(error) : sink.add(password);
        },
      );

  StreamTransformer<String, String> confirmPasswordValidator(String password) =>
      StreamTransformer<String, String>.fromHandlers(
        handleData: (String confirmPassword, EventSink<String> sink) {
          final String? error = ConfirmPasswordValidator(
            password: password,
          ).validate(confirmPassword);
          error != null ? sink.addError(error) : sink.add(confirmPassword);
        },
      );

  StreamTransformer<String, String> emailValidator =
      StreamTransformer<String, String>.fromHandlers(
        handleData: (String email, EventSink<String> sink) {
          final String? error = EmailValidator().validate(email);
          error != null ? sink.addError(error) : sink.add(email);
        },
      );

  StreamTransformer<String, String> requiredFieldValidator =
      StreamTransformer<String, String>.fromHandlers(
        handleData: (String txt, EventSink<String> sink) {
          final String? error = RequiredFieldValidator().validate(txt);
          error != null ? sink.addError(error) : sink.add(txt);
        },
      );

  StreamTransformer<String, String> mobileValidator =
      StreamTransformer<String, String>.fromHandlers(
        handleData: (String mobileNumber, EventSink<String> sink) {
          final String? error = PhoneNumberValidator().validate(mobileNumber);
          error != null ? sink.addError(error) : sink.add(mobileNumber);
        },
      );

  StreamTransformer<String, String> otpValidator =
      StreamTransformer<String, String>.fromHandlers(
        handleData: (String otpCode, EventSink<String> sink) {
          final String? error = OtpValidator().validate(otpCode);
          error != null ? sink.addError(error) : sink.add(otpCode);
        },
      );
}
