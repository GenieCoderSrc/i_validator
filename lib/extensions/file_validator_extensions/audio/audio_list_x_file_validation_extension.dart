import 'package:cross_file/cross_file.dart';
import 'package:i_validator/constant/file_field_error_messages.dart';

import 'audio_validation_extension.dart';
import '../../validation_error_list_extension.dart';

extension AudioListXFileValidationExtension on List<XFile>? {
  /// Returns all validation errors for audio files.
  List<String> validateAudioFileErrors() {
    return collectValidationErrors(
      (file) => file.path.validateAudioPath(),
      emptyError: FileFieldErrorMessages.fileRequired,
    );
  }

  /// Returns the first validation error.
  String? validateAudioFiles() {
    final errors = validateAudioFileErrors();
    return errors.isEmpty ? null : errors.first;
  }

  /// Whether all audio files are valid.
  bool get areValidAudioFiles => validateAudioFiles() == null;
}
