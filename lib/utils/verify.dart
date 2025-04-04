import 'i_validator.dart';

String? verify({required IValidator iValidator, String? txt}) =>
    iValidator.validate(txt ?? '');
