# 📄 CHANGELOG

## 1.0.1
### Jul 1, 2025
### ✅ Updated
- Updated example files

## 1.0.0
### Jul 1, 2025
### ✅ Added
- `OtpValidator` with custom length support
- `PasswordValidator` with `PasswordStrength` enum (`easy`, `medium`, `strong`)
- `ConfirmPasswordValidator` that compares two passwords
- `PinNumberValidator` for 4 or 6 digit PIN
- `PhoneNumberValidator` using regex pattern
- `EmailValidator` with format validation
- `NonEmptyStringValidator` (basic text required)
- `RequiredFieldValidator<T>` for nullable objects
- `MinValueValidator<T extends num>` for numerical min constraints
- `MaxValueValidator<T extends num>` for numerical max constraints

### ♻️ Changed
- `IValidator` interface updated from:
  ```dart
  abstract class IValidator {
    String? validate(String input);
  }
  ```
  to generic:
  ```dart
  abstract class IValidator<T> {
    String? validate(T input);
  }
  ```

### 🧪 Usage
For usage examples, see: `validator_example.dart`

---

## 0.0.3
- Update Documentations

## 0.0.2
### Added
- Email validation with `EmailValidator`
- Password validation with `PasswordValidator`
- Confirm password validation with `ConfirmPasswordValidator`
- Phone number validation with `PhoneNumberValidator`
- OTP validation with `OtpValidator`
- Required field validation with `RequiredFieldValidator`
- Utility functions for validation patterns
- File validation extension for image format checking
- `ValidatorMixin` for Stream-based validation handling

## 0.0.1
- Initial Release
