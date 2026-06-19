# i_validator

A Flutter package offering robust validation utilities for forms, inputs, and business logic. Includes predefined validators for strings, numbers, dates, lists, and custom regex patterns with type-safe generic support.

---

## **Features**

### **📜 Core Validators**
- **`IValidator<T>`** – Generic interface for all validators (supports any input type).
- **`RequiredFieldValidator<T>`** – Ensures non-null/non-empty values for any type.
- **`RequiredStringValidator`** – Non-empty text validation.
- **`RequiredTrueValidator`** – Boolean `true` validation (e.g., for checkboxes).
- **`RequiredListValidator`** – Validates non-empty lists.
- **`RequiredDateValidator`** – Ensures a date is provided.

### **🔢 Numeric Validators**
- **`MinValueValidator<T extends num>`** – Checks minimum value (int/double).
- **`MaxValueValidator<T extends num>`** – Checks maximum value (int/double).

### **📝 Text Validators**
- **`EmailValidator`** – RFC-compliant email format validation.
- **`PasswordValidator`** – Configurable strength levels (`easy`, `medium`, `strong`).
- **`MinLengthValidator`** – Enforces minimum string length.
- **`RegexValidator`** – Custom regex pattern validation (e.g., URLs, usernames).
- **`PhoneNumberValidator`** – Global phone number format support.

### **🔐 Security Validators**
- **`OtpValidator`** – Validates OTP codes (custom length).
- **`PinNumberValidator`** – 4 or 6-digit PIN validation.
- **`ConfirmPasswordValidator`** – Compares two password fields.

### **📂 File Validation (Extensions)**
The package provides powerful extensions for validating file paths and `XFile` objects:
- **Image Validation**: Validate image paths (`String?`) and `XFile` objects.
- **Video Validation**: Validate video paths (`String?`) and `XFile` objects.
- **Audio Validation**: Validate audio paths (`String?`) and `XFile` objects.
- **Document Validation**: Validate document paths (`String?`) and `XFile` objects.
- **List Validation**: Validate lists of file paths or `XFile` objects.

---

## **🚀 Installation**
Add to `pubspec.yaml`:
```yaml
dependencies:
  i_validator: <latest_version>
```
Run:
```sh
flutter pub get
```

---

## **🛠 Usage**

### **1. Email Validation**
```dart
final error = EmailValidator().validate("invalid-email");  
print(error); // "Enter a valid email"  
```

### **2. Password Validation (Strong)**
```dart
final validator = PasswordValidator(  
  minLength: 8,  
  strength: PasswordStrength.strong, // Requires uppercase, number, symbol  
);  
print(validator.validate("weak")); // "Password must be at least 8 characters"  
```

### **3. OTP Validation (6-digit)**
```dart
final error = OtpValidator(length: 6).validate("123");  
print(error); // "OTP must be 6 digits"  
```

### **4. Required Field Validation**
```dart
final error = RequiredFieldValidator<String>().validate("");  
print(error); // "This field is required"  
```

### **5. Custom Regex Validation**
```dart
final validator = RegexValidator(  
  pattern: r'^[A-Z][a-z]*$', // Starts with uppercase  
  errorText: "Must start with a capital letter",  
);  
print(validator.validate("flutter")); // Error message  
```

### **6. File Validation (Extensions)**
```dart
// Validate image path
final String? path = "profile.jpg";
final error = path.validateImagePath(); 

// Validate XFile object
final xfile = XFile('document.pdf');
final docError = xfile.validateDocumentFile();
```

### **7. List Validation**
```dart
final error = RequiredListValidator().validate([]);  
print(error); // "List cannot be empty"  
```

### **8. Date Validation**
```dart
final error = RequiredDateValidator().validate(null);  
print(error); // "A date is required"  
```

---

## **📜 License**
MIT – See [LICENSE](LICENSE) for details.

---

### **🔗 Links**
- [VALIDATOR USAGE](doc/VALIDATOR_USAGE.md)

--- 
