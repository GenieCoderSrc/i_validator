import 'package:cross_file/cross_file.dart';
import 'package:i_validator/constant/file_field_error_messages.dart';

import 'document_validation_extension.dart';
import '../../validation_error_list_extension.dart';

extension DocumentListXFileValidationExtension on List<XFile>? {
  /// Returns all validation errors for document files.
  List<String> validateDocumentFileErrors() {
    return collectValidationErrors(
      (file) => file.path.validateDocumentPath(),
      emptyError: FileFieldErrorMessages.fileRequired,
    );
  }

  /// Returns the first validation error.
  String? validateDocumentFiles() {
    final errors = validateDocumentFileErrors();
    return errors.isEmpty ? null : errors.first;
  }

  /// Whether all document files are valid.
  bool get areValidDocumentFiles => validateDocumentFiles() == null;
}
