import 'package:cross_file/cross_file.dart';
import 'package:i_validator/constant/file_field_error_messages.dart';

import 'video_validation_extension.dart';
import '../../validation_error_list_extension.dart';

extension VideoListXFileValidationExtension on List<XFile>? {
  /// Returns all validation errors for video files.
  List<String> validateVideoFileErrors() {
    return collectValidationErrors((file) {
      final source = file.path.toLowerCase().startsWith('blob:') ? file.name : file.path;
      return source.validateVideoPath();
    }, emptyError: FileFieldErrorMessages.fileRequired);
  }

  /// Returns the first validation error.
  String? validateVideoFiles() {
    final errors = validateVideoFileErrors();
    return errors.isEmpty ? null : errors.first;
  }

  /// Whether all video files are valid.
  bool get areValidVideoFiles => validateVideoFiles() == null;
}

// extension VideoListXFileValidationExtension on List<XFile>? {
//   /// Returns all validation errors for video files.
//   List<String> validateVideoFileErrors() {
//     return collectValidationErrors((file) {
//       // Handle both FileSystemXFile and URI-based files safely
//       final path = (file is FileSystemXFile)
//           ? file.path
//           : Uri.parse(file.uri).toFilePath();
//
//       return path.validateVideoPath();
//     }, emptyError: FileFieldErrorMessages.fileRequired);
//   }
//
//   /// Returns the first validation error.
//   String? validateVideoFiles() {
//     final errors = validateVideoFileErrors();
//     return errors.isEmpty ? null : errors.first;
//   }
//
//   /// Whether all video files are valid.
//   bool get areValidVideoFiles => validateVideoFiles() == null;
// }
