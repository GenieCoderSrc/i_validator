extension ImageValidationExtension on String {
  /// Checks if the current string is a valid image file path.
  /// Supports jpg, jpeg, png, gif, bmp, webp, and svg.
  bool get isValidImagePath {
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

    return validExtensions.any(lowerPath.endsWith);
  }
}
