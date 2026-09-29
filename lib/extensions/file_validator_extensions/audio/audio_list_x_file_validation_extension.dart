import 'package:cross_file/cross_file.dart';
import 'package:i_validator/constant/file_field_error_messages.dart';

import '../../validation_error_list_extension.dart';
import 'audio_validation_extension.dart';


extension AudioListXFileValidationExtension on List<XFile>? {
  /// Returns all validation errors for audio files.
  List<String> validateAudioFileErrors() {
    return collectValidationErrors(
      (XFile file) => file.path.validateAudioPath(),
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


// extension AudioListXFileValidationExtension on List<XFile>? {
//   /// Returns all validation errors for audio files.
//   List<String> validateAudioFileErrors() {
//     return collectValidationErrors((file) {
//       // Parse the string URI into a Uri object, then convert to a file path
//       final filePath = Uri.parse(file.uri).toFilePath();
//       return filePath.validateAudioPath();
//     }, emptyError: FileFieldErrorMessages.fileRequired);
//   }
//
//   /// Returns the first validation error.
//   String? validateAudioFiles() {
//     final errors = validateAudioFileErrors();
//     return errors.isEmpty ? null : errors.first;
//   }
//
//   /// Whether all audio files are valid.
//   bool get areValidAudioFiles => validateAudioFiles() == null;
// }
