import 'package:i_validator/constant/file_extensions.dart';
import 'package:i_validator/constant/file_field_error_messages.dart';

extension VideoValidationExtension on String? {
  String? validateVideoPath() {
    final path = this?.trim();
    if (path == null || path.isEmpty)
      return FileFieldErrorMessages.emptyFilePath;
    final lowerPath = path.toLowerCase();
    final isValid = FileExtensions.video.any(lowerPath.endsWith);
    return isValid
        ? null
        : FileFieldErrorMessages.invalidFormat('video', FileExtensions.video);
  }
}
