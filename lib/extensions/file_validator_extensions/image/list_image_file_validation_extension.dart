import 'package:cross_file/cross_file.dart';
import 'package:i_validator/constant/image_constants/image_field_error_messages.dart';

import '../image/image_validation_extension.dart';
import '../../validation_error_list_extension.dart';

extension ListImageFileValidationExtension on List<XFile>? {
  /// Returns all validation errors for image files.
  ///
  /// Returns an empty list if all files are valid.
  List<String> validateImageFileErrors() {
    return collectValidationErrors(
      (file) => file.path.validateImagePath(),
      emptyError: ImageFieldErrorMessages.imageRequired,
    );
  }

  /// Returns the first validation error.
  ///
  /// Returns `null` if all files are valid.
  String? validateImageFiles() {
    final errors = validateImageFileErrors();
    return errors.isEmpty ? null : errors.first;
  }

  /// Whether all image files are valid.
  bool get areValidImageFiles => validateImageFiles() == null;
}
