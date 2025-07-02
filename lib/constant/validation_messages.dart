// 📁 lib/core/validators/custom_validators.dart

// ✅ Validation messages
const kOtpRequiredError = 'OTP is required';
const kOtpLengthFormat = 'OTP must be %d digits';
const kOtpNumericError = 'OTP must be numeric';
const kPasswordRequiredError = 'Password is required';
const kPasswordLengthFormat = 'Password must be at least %d characters';
const kPasswordInvalidError = 'Invalid Password';
const kPasswordStrongError =
    'Must contains at least: '
    '\none uppercase letter, one lowercase letter,'
    '\none number & one special character (symbol)'
    '\nMinimum character : 8';
const kConfirmPasswordInvalidError = 'Invalid Confirm Password';
const kConfirmPasswordRequiredError = 'Please! Confirm your Password';
const kConfirmPasswordMismatchError = "Password doesn't match";
const kPhoneRequiredError = 'Phone number is required';
const kPhoneInvalidError = 'Invalid Phone Number';
const kEmailRequiredError = 'Email is required';
const kEmailInvalidError = 'Enter valid Email';
const kNonEmptyError = 'This field cannot be empty';
const kGenericRequiredError = 'Required Field Can\'t Be Empty';
const kNameInvalidError = 'Please Enter your Name';
const kOtpCodeInvalidError = 'Invalid OTP code';
const kPinNumberInvalidError = 'Pin Number Should be 4 or 6 Digits';
const kEmailOrMobileInvalidError = 'Invalid Email Or Mobile';
const kMustBeEnabledError = 'You must accept this field';
