import 'package:cross_file/cross_file.dart';
import 'package:i_validator/i_validator.dart';

import 'document_validation_extension.dart';

extension DocumentXFileValidationExtension on XFile {
  /// Validates if the XFile represents a valid document file.
  /// Uses [name] on Web (since path is a blob), otherwise [path].
  String? validateDocumentFile() {
    final source = path.toLowerCase().startsWith('blob:') ? name : path;
    return source.validateDocumentPath();
  }
}
