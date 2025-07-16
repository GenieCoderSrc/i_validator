extension ImageValidationExtension on String {
  /// Validates if the string is a valid image file path.
  /// Returns `null` if valid, otherwise returns an error message.
  String? validateImagePath() {
    final lowerPath = toLowerCase();
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
