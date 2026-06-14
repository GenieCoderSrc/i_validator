# Changelog

All notable changes to this project will be documented in this file.

## 1.1.6

### Sep 9, 2025

### 🐛 Fixed

- NumberValidator
- IntegerValidator
- DecimalValidator
- PositiveNumberValidator
- NegativeNumberValidator

## 1.1.5

### Sep 9, 2025

### ✨ Added

- NumberValidator.
- IntegerValidator.
- DecimalValidator.
- PositiveNumberValidator.
- NegativeNumberValidator.

## 1.1.4

### Sep 8, 2025

### ✨ Fixed

- Fixed email regex pattern.
- Fixed image regex pattern.
- Fixed PhoneNumber regex pattern.

## 1.1.3

### Sep 5, 2025

### ✨ Added

- Added `validateImageFile` extension for XFile.

## 1.1.2

### Aug 22, 2025

### ✨ Updated

- Updated Dart sdk to 3.9.0
- Removed `flutter_lints` Dependency

## 1.1.1

### Jul 21, 2025

**♻️ Changed**

* Added default implementation for `call()` method inside `IValidator` interface:

  ```dart
  abstract class IValidator<T> {
    String? validate(T? input);

    String? call(T? input) => validate(input); // Default implementation
  }
  ```

---

## 1.1.0

### Jul 16, 2025

**♻️ Changed**

* Updated `IValidator` interface to accept nullable input: `validate(T? input)`.
* Refactored `ConfirmPasswordRequiredValidator` to handle nullable `String?` input accordingly.

---

## 1.0.9

### Jul 16, 2025

**♻️ Changed**

* `ImageValidationExtension` updated to work on `String?` (nullable image path).

---

## 1.0.8

### Jul 16, 2025

**♻️ Changed**

* `ImageValidationExtension.isValidImagePath` updated to return `String?` via `validateImagePath()`
  method for error messaging.

---

## 1.0.7

### Jul 16, 2025

**✅ Updated**

* export `ImageValidationExtension` file.

---

## 1.0.6

### Jul 16, 2025

**✅ Removed**

* Removed cross\_file package dependency.

---

## 1.0.5

### Jul 16, 2025

**✅ Added**

* `ImageValidationExtension` with `isValidImagePath` method to validate image file extensions.

---

## 1.0.4

### Jul 3, 2025

**✅ Updated**

* Uses VALIDATOR USAGE files Links in the README Section.

---

## 1.0.3

### Jul 3, 2025

**✅ Added**

* VALIDATOR USAGE Example files refined for better clarity.

---

## 1.0.2

### Jul 3, 2025

**✅ Added**
New validators for comprehensive input validation:

* `MinLengthValidator` – Ensures minimum string length
* `RegexValidator` – Custom regex pattern validation
* `RequiredDateValidator` – Validates mandatory date input
* `RequiredListValidator` – Checks if a list is non-empty
* `RequiredStringValidator` – Ensures non-empty strings
* `RequiredTrueValidator` – Validates boolean `true` values

---

## 1.0.1

### Jul 1, 2025

**✅ Updated**

* Example files refined for better clarity.

---

## 1.0.0

### Jul 1, 2025

**✅ Added**
Core validators:

* `OtpValidator` – Custom OTP length support
* `PasswordValidator` – Strength levels (`easy`, `medium`, `strong`)
* `ConfirmPasswordValidator` – Compares two passwords
* `PinNumberValidator` – 4 or 6-digit PIN validation
* `PhoneNumberValidator` – Regex-based phone validation
* `EmailValidator` – Format validation
* `NonEmptyStringValidator` – Basic text requirement
* `RequiredFieldValidator<T>` – Nullable object checks
* `MinValueValidator<T extends num>` – Numerical minimum constraints
* `MaxValueValidator<T extends num>` – Numerical maximum constraints

**♻️ Changed**

* `IValidator` interface now generic:

  ```dart
  abstract class IValidator<T> {
    String? validate(T input);
  }
  ```

**🤪 Usage**
See `validator_example.dart` for examples.

---

## 0.0.3

### Jun 2025

* Documentation updates.

---

## 0.0.2

### Jun 2025

**✅ Added**
Initial validators:

* Email, password, OTP, phone number, and field validation
* Utility functions for patterns
* Image file validation extension
* `ValidatorMixin` for Stream-based validation

---

## 0.0.1

### Jun 2025

* Initial release.

---

*For detailed usage, refer to the example files.*
