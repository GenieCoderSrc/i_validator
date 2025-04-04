abstract class Validators {
  static const String _emailPattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  static final RegExp _emailRegex = RegExp(_emailPattern);

  static bool isEmail(String value) {
    return _emailRegex.hasMatch(value);
  }

  static bool isUrl(String? value) {
    return value != null && value.startsWith('http');
  }
}

bool isNotNull(dynamic value) => value != null;

bool isNull(dynamic value) => value == null;
