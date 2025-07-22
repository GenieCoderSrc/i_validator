import 'package:i_validator/validators/i_validator.dart';

String? validate({required IValidator iValidator, String? txt}) =>
    iValidator.validate(txt ?? '');
