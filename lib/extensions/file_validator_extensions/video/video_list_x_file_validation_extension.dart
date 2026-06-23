import 'package:cross_file/cross_file.dart';
import 'package:i_validator/constant/file_field_error_messages.dart';

import 'video_validation_extension.dart';
import '../../validation_error_list_extension.dart';

extension VideoListXFileValidationExtension on List<XFile>? {
  /// Returns all validation errors for video files.
  List<String> validateVideoFileErrors() {
    return collectValidationErrors(
      (file) => file.path.validateVideoPath(),
      emptyError: FileFieldErrorMessages.fileRequired,
    );
  }

  /// Returns the first validation error.
  String? validateVideoFiles() {
    final errors = validateVideoFileErrors();
    return errors.isEmpty ? null : errors.first;
  }

  /// Whether all video files are valid.
  bool get areValidVideoFiles => validateVideoFiles() == null;
}
