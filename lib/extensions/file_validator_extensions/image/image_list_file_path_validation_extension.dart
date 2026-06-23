import 'package:i_validator/constant/image_constants/image_field_error_messages.dart';

import '../image/image_validation_extension.dart';
import '../../validation_error_list_extension.dart';

extension ImageListFilePathValidationExtension on List<String>? {
  /// Returns all validation errors for image paths.
  ///
  /// Returns an empty list if all paths are valid.
  List<String> validateImagePathErrors() {
    return collectValidationErrors(
      (path) => path.validateImagePath(),
      emptyError: ImageFieldErrorMessages.imageRequired,
    );
  }

  /// Returns the first validation error.
  ///
  /// Returns `null` if all paths are valid.
  String? validateImagePaths() {
    final errors = validateImagePathErrors();
    return errors.isEmpty ? null : errors.first;
  }

  /// Whether all image paths are valid.
  bool get areValidImagePaths => validateImagePaths() == null;
}
