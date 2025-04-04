import 'dart:io';

extension FileValidationExtension on File {
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
}
