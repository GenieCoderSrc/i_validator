import 'package:i_validator/constant/file_extensions.dart';
import 'package:i_validator/constant/file_field_error_messages.dart';

extension DocumentValidationExtension on String? {
  String? validateDocumentPath() {
    final path = this?.trim();
    if (path == null || path.isEmpty)
      return FileFieldErrorMessages.emptyFilePath;
    final lowerPath = path.toLowerCase();
    final isValid = FileExtensions.document.any(lowerPath.endsWith);
    return isValid
        ? null
        : FileFieldErrorMessages.invalidFormat(
            'document',
            FileExtensions.document,
          );
  }
}
