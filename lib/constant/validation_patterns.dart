// ✅ Validation patterns
const patternPasswordEasy = r'^(?=.*).{6,}\$';
const patternPasswordMedium = r'^(?=.*[A-Za-z])(?=.*\d).{8,}\$';
const patternPasswordStrong =
    r'^(?=.*?[A-Z])(?=(.*[a-z]){1,})(?=(.*[\d]){1,})(?=(.*[\W]){1,})(?!.*\s).{8,16}\$';
const patternEmail =
    r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))\$';
const patternPhone = r'(^(?:[+0][0-9])?[0-9]{10,12}\$)';
const patternOtp = r'^\d{6}\$';
const patternPin = r'^\d{4}\$|^\d{6}\$';
const patternUsername = r'^[a-zA-Z0-9][a-zA-Z0-9_.]+[a-zA-Z0-9]\$';
const patternName =
    r"^([A-Z][A-Za-z.'\-]+) (?:([A-Z][A-Za-z.'\-]+) )?([A-Z][A-Za-z.'\-]+)\$";
const patternImageExtension = r'.(jpeg|jpg|gif|png|bmp)\$';
