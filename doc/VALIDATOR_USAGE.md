# 📗 VALIDATOR_USAGE.md

This document shows usage examples for the `reusable_editor` package's validators.

---

## ✅ Required Validators

### RequiredStringValidator

```dart
final validator = RequiredStringValidator();
validator.validate(''); // Returns error
validator.validate('Text'); // Returns null
```

### RequiredDateValidator

```dart
final validator = RequiredDateValidator();
validator.validate(null); // Returns error
validator.validate(DateTime.now()); // Returns null
```

### RequiredTrueValidator

```dart
final validator = RequiredTrueValidator();
validator.validate(false); // Returns error
validator.validate(true); // Returns null
```

### RequiredListValidator

```dart
final validator = RequiredListValidator();
validator.validate([]); // Returns error
validator.validate(['a']); // Returns null
```

## ✅ Min/Max Validators

### MinValueValidator

```dart
final validator = MinValueValidator(min: 10);
validator.validate(5); // Returns error
validator.validate(15); // Returns null
```

### MaxValueValidator

```dart
final validator = MaxValueValidator(max: 100);
validator.validate(150); // Returns error
validator.validate(99); // Returns null
```

## ✅ RegexValidator

```dart
final validator = RegexValidator(
  pattern: r'^\w+@\w+\.com$',
  errorMessage: 'Invalid email format',
);
validator.validate('invalid'); // Returns error
validator.validate('test@example.com'); // Returns null
```

## ✅ Custom Validator Implementation

```dart
class CustomValidator implements IValidator<String> {
  @override
  String? validate(String? value) {
    if (value == null || value.length < 5) {
      return 'Must be at least 5 characters';
    }
    return null;
  }
}
```

## ✅ ImageValidationExtension

```dart

// Usage Example:
String? path1 = 'assets/image.jpg';
String? path2 = null;
String? path3 = 'assets/file.txt';

print(path1.validateImagePath()); // null (valid)
print(path2.validateImagePath()); // "Image path cannot be empty."
print(path3.validateImagePath()); // "Invalid image path..."


```

## ✅ FileValidationExtension

```dart
// Usage Example:
final file = File('path/to/image.jpg');
print(file.validateImage());       // null if valid image
print(file.validateNotEmpty());    // null if not empty
print(file.validateMaxSize(50000)); // error if > 50KB
print(file.validateExtension(['pdf', 'xps'])); // null if valid extension
```
