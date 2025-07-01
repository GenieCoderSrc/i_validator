import 'package:flutter/foundation.dart';
import 'package:i_validator/i_validator.dart';

void main() {
  debugPrint('--- 📌 OtpValidator ---');
  final otpValidator = OtpValidator(length: 6);
  debugPrint('Valid OTP: ${otpValidator.validate("123456") ?? "✔"}');
  debugPrint('Invalid OTP: ${otpValidator.validate("123") ?? "✔"}');

  debugPrint('\n--- 🔐 PasswordValidator (strong) ---');
  final passwordValidator = PasswordValidator(
    minLength: 8,
    strength: PasswordStrength.strong,
  );
  debugPrint(
    'Valid Password: ${passwordValidator.validate("Strong@123") ?? "✔"}',
  );
  debugPrint('Weak Password: ${passwordValidator.validate("12345") ?? "✔"}');

  debugPrint('\n--- 🔁 ConfirmPasswordValidator ---');
  final confirmValidator = ConfirmPasswordValidator(password: "Strong@123");
  debugPrint('Match: ${confirmValidator.validate("Strong@123") ?? "✔"}');
  debugPrint('Mismatch: ${confirmValidator.validate("WrongOne") ?? "✔"}');

  debugPrint('\n--- 📱 PhoneNumberValidator ---');
  final phoneValidator = PhoneNumberValidator();
  debugPrint('Valid phone: ${phoneValidator.validate("01712345678") ?? "✔"}');
  debugPrint('Invalid phone: ${phoneValidator.validate("12345") ?? "✔"}');

  debugPrint('\n--- 📧 EmailValidator ---');
  final emailValidator = EmailValidator();
  debugPrint('Valid email: ${emailValidator.validate("me@mail.com") ?? "✔"}');
  debugPrint('Invalid email: ${emailValidator.validate("bademail") ?? "✔"}');

  debugPrint('\n--- 🔢 PinNumberValidator ---');
  final pinValidator = PinNumberValidator();
  debugPrint('Valid 4-digit PIN: ${pinValidator.validate("1234") ?? "✔"}');
  debugPrint('Valid 6-digit PIN: ${pinValidator.validate("123456") ?? "✔"}');
  debugPrint('Invalid PIN: ${pinValidator.validate("999") ?? "✔"}');

  debugPrint('\n--- ❗ RequiredFieldValidator<int> ---');
  final requiredInt = RequiredFieldValidator<int>();
  debugPrint('Valid int: ${requiredInt.validate(0) ?? "✔"}');
  debugPrint('Invalid int: ${requiredInt.validate(null) ?? "✔"}');

  debugPrint('\n--- 📝 RequiredStringValidator (non-empty) ---');
  final requiredStr = NonEmptyStringValidator();
  debugPrint('Valid text: ${requiredStr.validate("Hello") ?? "✔"}');
  debugPrint('Empty text: ${requiredStr.validate("") ?? "✔"}');

  debugPrint('\n--- 🔢 MinValueValidator<int> ---');
  final minIntValidator = MinValueValidator<int>(min: 10);
  debugPrint('Above min: ${minIntValidator.validate(15) ?? "✔"}');
  debugPrint('Below min: ${minIntValidator.validate(5) ?? "✔"}');

  debugPrint('\n--- 🔢 MaxValueValidator<double> ---');
  final maxDoubleValidator = MaxValueValidator<double>(max: 99.5);
  debugPrint('Within max: ${maxDoubleValidator.validate(88.88) ?? "✔"}');
  debugPrint('Exceed max: ${maxDoubleValidator.validate(120.0) ?? "✔"}');
}
