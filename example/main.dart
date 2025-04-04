import 'package:i_validator/i_validator.dart';

void main() {
  // Example usage of validators

  // Email Validation
  String email = "test@example.com";
  String? emailError = EmailValidator().validate(email);
  print(emailError ?? "Valid Email");

  // Password Validation
  String password = "Test@123";
  String? passwordError = PasswordValidator().validate(password);
  print(passwordError ?? "Valid Password");

  // Confirm Password Validation
  String confirmPassword = "Test@123";
  String? confirmPasswordError = ConfirmPasswordValidator(password: password)
      .validate(confirmPassword);
  print(confirmPasswordError ?? "Passwords Match");

  // Phone Number Validation
  String phoneNumber = "+1234567890";
  String? phoneError = PhoneNumberValidator().validate(phoneNumber);
  print(phoneError ?? "Valid Phone Number");

  // OTP Validation
  String otp = "123456";
  String? otpError = OtpValidator().validate(otp);
  print(otpError ?? "Valid OTP");

  // Required Field Validation
  String requiredField = "";
  String? requiredFieldError = RequiredFieldValidator().validate(requiredField);
  print(requiredFieldError ?? "Field is filled");
}
