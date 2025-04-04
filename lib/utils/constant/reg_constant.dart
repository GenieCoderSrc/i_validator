/// Username regex
final RegExp usernamePattern =
RegExp(r'^[a-zA-Z0-9][a-zA-Z0-9_.]+[a-zA-Z0-9]$');
final RegExp namePattern = RegExp(
    r"^([A-Z][A-Za-z.'\-]+) (?:([A-Z][A-Za-z.'\-]+) )?([A-Z][A-Za-z.'\-]+)$");
final RegExp phoneNumberPattern = RegExp(r'(^(?:[+0][0-9])?[0-9]{10,12}$)');
final RegExp otpCode = RegExp(r"^\d{6}$");
final RegExp pinNumber = RegExp(r'^\d{4}$|^\d{6}$');
final RegExp emailPattern = RegExp(
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
final RegExp easyPassword = RegExp(r'^\S{6,}$');
final RegExp passwordStrong = RegExp(
    r'^(?=.*?[A-Z])(?=(.*[a-z]){1,})(?=(.*[\d]){1,})(?=(.*[\W]){1,})(?!.*\s).{6,16}$');
const Pattern image = r'.(jpeg|jpg|gif|png|bmp)$';