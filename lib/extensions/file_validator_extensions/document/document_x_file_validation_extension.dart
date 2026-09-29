import 'package:cross_file/cross_file.dart';
import 'package:i_validator/i_validator.dart';

import 'document_validation_extension.dart';

extension DocumentXFileValidationExtension on XFile {
  /// Validates if the XFile represents a valid document file.
  String? validateDocumentFile() {
    // Check if it's a traditional file system path or parse the URI string
    final source = this is FileSystemXFile
        ? (this as FileSystemXFile).path
        : Uri.parse(uri).path;

    return source.validateDocumentPath();
  }
}
