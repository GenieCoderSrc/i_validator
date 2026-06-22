import 'package:i_validator/constant/file_field_error_messages.dart';

import 'document_validation_extension.dart';
import '../../validation_error_list_extension.dart';

extension DocumentListFilePathValidationExtension on List<String>? {
  /// Returns all validation errors for document paths.
  List<String> validateDocumentPathErrors() {
    return collectValidationErrors(
      (path) => path.validateDocumentPath(),
      emptyError: FileFieldErrorMessages.fileRequired,
    );
  }

  /// Returns the first validation error.
  String? validateDocumentPaths() {
    final errors = validateDocumentPathErrors();
    return errors.isEmpty ? null : errors.first;
  }

  /// Whether all document paths are valid.
  bool get areValidDocumentPaths => validateDocumentPaths() == null;
}
