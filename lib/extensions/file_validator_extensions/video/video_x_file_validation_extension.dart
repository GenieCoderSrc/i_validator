import 'package:cross_file/cross_file.dart';
import 'package:i_validator/i_validator.dart';

import 'video_validation_extension.dart';

extension VideoXFileValidationExtension on XFile {
  /// Validates if the XFile represents a valid video file.
  /// Uses [name] on Web (since path is a blob), otherwise [path].
  String? validateVideoFile() {
    final source = path.toLowerCase().startsWith('blob:') ? name : path;
    return source.validateVideoPath();
  }
}
