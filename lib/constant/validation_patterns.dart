// ✅ Validation patterns
// Passwords
const patternPasswordEasy = r'^(?=.*).{6,}$';
const patternPasswordMedium = r'^(?=.*[A-Za-z])(?=.*\d).{8,}$';
const patternPasswordStrong =
    r'^(?=.*?[A-Z])(?=(.*[a-z]){1,})(?=(.*[\d]){1,})(?=(.*[\W]){1,})(?!.*\s).{8,16}$';

// Common Inputs
const patternEmail = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
const patternPhone = r'^\+?[0-9]{7,15}$';
const patternOtp = r'^\d{6}$';
const patternPin = r'^\d{4}$|^\d{6}$';
const patternUsername = r'^[a-zA-Z0-9][a-zA-Z0-9_.]+[a-zA-Z0-9]$';
const patternName =
    r"^([A-Z][A-Za-z.'\-]+) (?:([A-Z][A-Za-z.'\-]+) )?([A-Z][A-Za-z.'\-]+)$";
const patternImageExtension = r'\.(jpe?g|png|gif|bmp|webp|svg)$';
