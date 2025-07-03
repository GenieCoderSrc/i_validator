# Changelog

All notable changes to this project will be documented in this file.


### **Version 1.0.4** (Jul 3, 2025)
**✅ Updated**
- Uses VALIDATOR USAGE files Links in the README Section.

---


### **Version 1.0.3** (Jul 3, 2025)
**✅ Added**
- VALIDATOR USAGE Example files refined for better clarity.

---


### **Version 1.0.2** (Jul 3, 2025)
**✅ Added**  
New validators for comprehensive input validation:
- `MinLengthValidator` – Ensures minimum string length
- `RegexValidator` – Custom regex pattern validation
- `RequiredDateValidator` – Validates mandatory date input
- `RequiredListValidator` – Checks if a list is non-empty
- `RequiredStringValidator` – Ensures non-empty strings
- `RequiredTrueValidator` – Validates boolean `true` values

---

### **Version 1.0.1** (Jul 1, 2025)
**✅ Updated**
- Example files refined for better clarity.

---

### **Version 1.0.0** (Jul 1, 2025)
**✅ Added**  
Core validators:
- `OtpValidator` – Custom OTP length support
- `PasswordValidator` – Strength levels (`easy`, `medium`, `strong`)
- `ConfirmPasswordValidator` – Compares two passwords
- `PinNumberValidator` – 4 or 6-digit PIN validation
- `PhoneNumberValidator` – Regex-based phone validation
- `EmailValidator` – Format validation
- `NonEmptyStringValidator` – Basic text requirement
- `RequiredFieldValidator<T>` – Nullable object checks
- `MinValueValidator<T extends num>` – Numerical minimum constraints
- `MaxValueValidator<T extends num>` – Numerical maximum constraints

**♻️ Changed**
- `IValidator` interface now generic:
  ```dart
  abstract class IValidator<T> { String? validate(T input); }
  ```

**🧪 Usage**  
See `validator_example.dart` for examples.

---

### **Version 0.0.3**
- Documentation updates.

### **Version 0.0.2**
**✅ Added**  
Initial validators:
- Email, password, OTP, phone number, and field validation
- Utility functions for patterns
- Image file validation extension
- `ValidatorMixin` for Stream-based validation

### **Version 0.0.1**
- Initial release.

---  
*For detailed usage, refer to the example files.*