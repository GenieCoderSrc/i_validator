extension ImageValidationExtension on String? {
  /// Validates if the nullable string is a valid image file path.
  /// Returns `null` if valid, otherwise an error message.
  String? validateImagePath() {
    if (this == null || this!.trim().isEmpty) {
      return 'Image path cannot be empty.';
    }

    final lowerPath = this!.toLowerCase();
    final validExtensions = [
      '.jpg',
      '.jpeg',
      '.png',
      '.gif',
      '.bmp',
      '.webp',
      '.svg',
    ];

    final isValid = validExtensions.any(lowerPath.endsWith);
    if (!isValid) {
      return 'Invalid image path. Supported formats: ${validExtensions.join(', ')}';
    }

    return null;
  }
}
