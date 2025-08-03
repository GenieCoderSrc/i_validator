import 'package:flutter/foundation.dart';
import 'package:i_validator/i_validator.dart';

void main() {
  // --- 🔐 SECURITY VALIDATORS ---
  debugPrint('\n--- 🔐 SECURITY VALIDATORS ---');

  debugPrint('\n📌 OtpValidator (6-digit)');
  final otpValidator = OtpValidator(length: 6);
  debugPrint('  Valid OTP: ${otpValidator.validate("123456") ?? "✅ Valid"}');
  debugPrint('  Invalid OTP: ${otpValidator.validate("123") ?? "✅ Valid"}');

  debugPrint('\n🔐 PasswordValidator (strong)');
  final passwordValidator = PasswordValidator(
    minLength: 8,
    strength: PasswordStrength.strong,
  );
  debugPrint(
    '  Valid Password: ${passwordValidator.validate("Strong@123") ?? "✅ Valid"}',
  );
  debugPrint(
    '  Weak Password: ${passwordValidator.validate("weak") ?? "✅ Valid"}',
  );

  debugPrint('\n🔄 ConfirmPasswordValidator');
  final confirmValidator = ConfirmPasswordValidator(password: "Strong@123");
  debugPrint(
    '  Match: ${confirmValidator.validate("Strong@123") ?? "✅ Valid"}',
  );
  debugPrint(
    '  Mismatch: ${confirmValidator.validate("WrongPass") ?? "✅ Valid"}',
  );

  debugPrint('\n🔢 PinNumberValidator');
  final pinValidator = PinNumberValidator();
  debugPrint('  Valid 4-digit: ${pinValidator.validate("1234") ?? "✅ Valid"}');
  debugPrint(
    '  Valid 6-digit: ${pinValidator.validate("123456") ?? "✅ Valid"}',
  );
  debugPrint('  Invalid: ${pinValidator.validate("12") ?? "✅ Valid"}');

  // --- 📝 TEXT VALIDATORS ---
  debugPrint('\n--- 📝 TEXT VALIDATORS ---');

  debugPrint('\n📧 EmailValidator');
  final emailValidator = EmailValidator();
  debugPrint('  Valid: ${emailValidator.validate("me@mail.com") ?? "✅ Valid"}');
  debugPrint('  Invalid: ${emailValidator.validate("bad@email") ?? "✅ Valid"}');

  debugPrint('\n📱 PhoneNumberValidator');
  final phoneValidator = PhoneNumberValidator();
  debugPrint('  Valid: ${phoneValidator.validate("01712345678") ?? "✅ Valid"}');
  debugPrint('  Invalid: ${phoneValidator.validate("123") ?? "✅ Valid"}');

  debugPrint('\n📏 MinLengthValidator (min: 5)');
  final minLengthValidator = MinLengthValidator(5);
  debugPrint('  Valid: ${minLengthValidator.validate("Hello") ?? "✅ Valid"}');
  debugPrint('  Invalid: ${minLengthValidator.validate("Hi") ?? "✅ Valid"}');

  debugPrint('\n🔄 RegexValidator (Uppercase first)');
  final regexValidator = RegexValidator(
    pattern: r'^[A-Z][a-z]*$',
    errorText: "Must start with uppercase",
  );
  debugPrint('  Valid: ${regexValidator.validate("Flutter") ?? "✅ Valid"}');
  debugPrint('  Invalid: ${regexValidator.validate("dart") ?? "✅ Valid"}');

  // --- 🔢 NUMERIC VALIDATORS ---
  debugPrint('\n--- 🔢 NUMERIC VALIDATORS ---');

  debugPrint('\n⬆️ MinValueValidator<int> (min: 10)');
  final minIntValidator = MinValueValidator<int>(min: 10);
  debugPrint('  Valid (15): ${minIntValidator.validate(15) ?? "✅ Valid"}');
  debugPrint('  Invalid (5): ${minIntValidator.validate(5) ?? "✅ Valid"}');

  debugPrint('\n⬇️ MaxValueValidator<double> (max: 99.5)');
  final maxDoubleValidator = MaxValueValidator<double>(max: 99.5);
  debugPrint(
    '  Valid (88.8): ${maxDoubleValidator.validate(88.8) ?? "✅ Valid"}',
  );
  debugPrint(
    '  Invalid (120.0): ${maxDoubleValidator.validate(120.0) ?? "✅ Valid"}',
  );

  // --- ✔️ REQUIRED VALIDATORS ---
  debugPrint('\n--- ✔️ REQUIRED VALIDATORS ---');

  debugPrint('\n❗ RequiredFieldValidator<String>');
  final requiredStr = RequiredFieldValidator<String>();
  debugPrint('  Valid: ${requiredStr.validate("Text") ?? "✅ Valid"}');
  debugPrint('  Invalid: ${requiredStr.validate("") ?? "✅ Valid"}');

  debugPrint('\n📅 RequiredDateValidator');
  final requiredDate = RequiredDateValidator();
  debugPrint('  Valid: ${requiredDate.validate(DateTime.now()) ?? "✅ Valid"}');
  debugPrint('  Invalid: ${requiredDate.validate(null) ?? "✅ Valid"}');

  debugPrint('\n📋 RequiredListValidator');
  final requiredList = RequiredListValidator();
  debugPrint('  Valid: ${requiredList.validate([1, 2]) ?? "✅ Valid"}');
  debugPrint('  Invalid: ${requiredList.validate([]) ?? "✅ Valid"}');

  debugPrint('\n🔘 RequiredTrueValidator');
  final requiredTrue = RequiredTrueValidator();
  debugPrint('  Valid: ${requiredTrue.validate(true) ?? "✅ Valid"}');
  debugPrint('  Invalid: ${requiredTrue.validate(false) ?? "✅ Valid"}');
}
