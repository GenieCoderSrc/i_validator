import 'dart:io';

extension FileValidationExtension on File {
  /// Validates if the file exists and is of a supported image format.
  String? validateImage() {
    if (!existsSync()) {
      return "File does not exist.";
    }

    final String extension = path.split('.').last.toLowerCase();
    if (!['jpg', 'jpeg', 'png', 'gif', 'bmp', 'webp'].contains(extension)) {
      return "Invalid image format. Supported formats: jpg, jpeg, png, gif, bmp, webp.";
    }

    return null; // Null indicates the image is valid
  }

  /// Validates if the file is not empty.
  String? validateNotEmpty() {
    if (!existsSync()) {
      return "File does not exist.";
    }
    if (lengthSync() == 0) {
      return "File is empty.";
    }
    return null;
  }

  /// Validates file size against a max limit in bytes.
  String? validateMaxSize(int maxSizeInBytes) {
    if (!existsSync()) {
      return "File does not exist.";
    }
    if (lengthSync() > maxSizeInBytes) {
      return "File exceeds maximum allowed size of \$maxSizeInBytes bytes.";
    }
    return null;
  }

  /// Validates file extension.
  String? validateExtension(List<String> allowedExtensions) {
    final ext = path.split('.').last.toLowerCase();
    if (!allowedExtensions.contains(ext)) {
      return "Unsupported file extension: .\$ext.";
    }
    return null;
  }
}
