import 'package:cross_file/cross_file.dart';
import 'package:i_validator/constant/image_constants/image_field_error_messages.dart';

import '../image/image_validation_extension.dart';
import '../../validation_error_list_extension.dart';

extension ImageListXFileValidationExtension on List<XFile>? {
  /// Returns all validation errors for image files.
  List<String> validateImageFileErrors() {
    return collectValidationErrors((file) {
      final source = file.path.toLowerCase().startsWith('blob:') ? file.name : file.path;
      return source.validateImagePath();
    }, emptyError: ImageFieldErrorMessages.imageRequired);
  }

  /// Returns the first validation error.
  String? validateImageFiles() {
    final errors = validateImageFileErrors();
    return errors.isEmpty ? null : errors.first;
  }

  /// Whether all image files are valid.
  bool get areValidImageFiles => validateImageFiles() == null;
}

// extension ImageListXFileValidationExtension on List<XFile>? {
//   /// Returns all validation errors for image files.
//   List<String> validateImageFileErrors() {
//     return collectValidationErrors((file) {
//       // Handle both FileSystemXFile and URI-based files safely
//       final path = (file is FileSystemXFile)
//           ? file.path
//           : Uri.parse(file.uri).toFilePath();
//
//       return path.validateImagePath();
//     }, emptyError: ImageFieldErrorMessages.imageRequired);
//   }
//
//   /// Returns the first validation error.
//   String? validateImageFiles() {
//     final errors = validateImageFileErrors();
//     return errors.isEmpty ? null : errors.first;
//   }
//
//   /// Whether all image files are valid.
//   bool get areValidImageFiles => validateImageFiles() == null;
// }
