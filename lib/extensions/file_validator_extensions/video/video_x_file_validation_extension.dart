import 'package:cross_file/cross_file.dart';
import 'package:i_validator/i_validator.dart';

import 'video_validation_extension.dart';

extension VideoXFileValidationExtension on XFile {
  /// Validates if the XFile represents a valid video file.
  String? validateVideoFile() {
    // Check if it's a traditional file system path or parse the URI string
    final source = this is FileSystemXFile
        ? (this as FileSystemXFile).path
        : Uri.parse(uri).path;

    return source.validateVideoPath();
  }
}
