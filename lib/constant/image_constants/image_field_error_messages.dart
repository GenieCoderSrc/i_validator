abstract final class ImageFieldErrorMessages {
  static const String emptyImagePath = 'Image path cannot be empty.';
  static const String imageRequired = 'Please select at least one image';
  static const String uploadFailed = 'Failed to upload image';
  static const String uploadMultipleFailed = 'Failed to upload images';
  static const String deleteFailed = 'Failed to delete image';

  static String invalidImageFormat(List<String> extensions) {
    return 'Invalid image format. Supported: ${extensions.join(', ')}';
  }
}
