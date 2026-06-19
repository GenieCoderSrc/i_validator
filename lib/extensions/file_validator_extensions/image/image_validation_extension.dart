import 'package:i_validator/constant/image_constants/image_extensions.dart';
import 'package:i_validator/constant/image_constants/image_field_error_messages.dart';

extension ImageValidationExtension on String? {
  String? validateImagePath() {
    final path = this?.trim();

    if (path == null || path.isEmpty) {
      return ImageFieldErrorMessages.emptyImagePath;
    }

    final lowerPath = path.toLowerCase();

    final isValid = ImageExtensions.supported.any(lowerPath.endsWith);

    return isValid
        ? null
        : ImageFieldErrorMessages.invalidImageFormat(ImageExtensions.supported);
  }
}
