abstract final class FileFieldErrorMessages {
  static const String fileRequired = 'Please select at least one file';
  static const String emptyFilePath = 'File path cannot be empty.';
  static const String uploadFailed = 'Failed to upload file';
  static const String uploadMultipleFailed = 'Failed to upload files';
  static const String deleteFailed = 'Failed to delete file';

  static String invalidFormat(String type, List<String> extensions) {
    return 'Invalid $type format. Supported: ${extensions.join(', ')}';
  }
}
