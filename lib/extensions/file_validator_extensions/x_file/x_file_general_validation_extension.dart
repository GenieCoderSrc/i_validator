import 'package:cross_file/cross_file.dart';
import 'package:i_validator/extensions/file_validator_extensions/audio/audio_validation_extension.dart'
    show AudioValidationExtension;
import 'package:i_validator/extensions/file_validator_extensions/document/document_validation_extension.dart';
import 'package:i_validator/extensions/file_validator_extensions/video/video_validation_extension.dart';
import 'package:i_validator/i_validator.dart';

extension XFileGeneralValidationExtension on XFile {
  /// Validates if the XFile is a valid video file.
  String? validateVideoFile() {
    final source = path.toLowerCase().startsWith('blob:') ? name : path;
    return source.validateVideoPath();
  }

  /// Validates if the XFile is a valid audio file.
  String? validateAudioFile() {
    final source = path.toLowerCase().startsWith('blob:') ? name : path;
    return source.validateAudioPath();
  }

  /// Validates if the XFile is a valid document file.
  String? validateDocumentFile() {
    final source = path.toLowerCase().startsWith('blob:') ? name : path;
    return source.validateDocumentPath();
  }
}
