import 'package:i_validator/constant/file_field_error_messages.dart';

import 'video_validation_extension.dart';
import '../../validation_error_list_extension.dart';

extension VideoListFilePathValidationExtension on List<String>? {
  /// Returns all validation errors for video paths.
  List<String> validateVideoPathErrors() {
    return collectValidationErrors(
      (path) => path.validateVideoPath(),
      emptyError: FileFieldErrorMessages.fileRequired,
    );
  }

  /// Returns the first validation error.
  String? validateVideoPaths() {
    final errors = validateVideoPathErrors();
    return errors.isEmpty ? null : errors.first;
  }

  /// Whether all video paths are valid.
  bool get areValidVideoPaths => validateVideoPaths() == null;
}
