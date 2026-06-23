import 'package:i_validator/constant/file_field_error_messages.dart';

import 'audio_validation_extension.dart';
import '../../validation_error_list_extension.dart';

extension AudioListFilePathValidationExtension on List<String>? {
  /// Returns all validation errors for audio paths.
  List<String> validateAudioPathErrors() {
    return collectValidationErrors(
      (path) => path.validateAudioPath(),
      emptyError: FileFieldErrorMessages.fileRequired,
    );
  }

  /// Returns the first validation error.
  String? validateAudioPaths() {
    final errors = validateAudioPathErrors();
    return errors.isEmpty ? null : errors.first;
  }

  /// Whether all audio paths are valid.
  bool get areValidAudioPaths => validateAudioPaths() == null;
}
