import 'package:cross_file/cross_file.dart';
import 'package:i_validator/i_validator.dart';

import 'image_validation_extension.dart';

extension ImageXFileValidationExtension on XFile {
  /// Validates if the XFile represents a valid image file.
  String? validateImageFile() {
    // Check if it's a traditional file system path or parse the URI string
    final source = this is FileSystemXFile
        ? (this as FileSystemXFile).path
        : Uri.parse(uri).path;

    return source.validateImagePath();
  }
}
