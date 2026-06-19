import 'package:cross_file/cross_file.dart';
import 'package:i_validator/constant/file_field_error_messages.dart';

import '../image/image_validation_extension.dart';
import '../video/video_validation_extension.dart';
import '../audio/audio_validation_extension.dart';
import '../document/document_validation_extension.dart';
import '../../validation_error_list_extension.dart';

extension ListXFileValidationExtension on List<XFile>? {
  String? validateImageFiles() {
    final errors = collectValidationErrors(
      (f) => f.path.validateImagePath(),
      emptyError: FileFieldErrorMessages.fileRequired,
    );
    return errors.isEmpty ? null : errors.first;
  }

  String? validateVideoFiles() {
    final errors = collectValidationErrors(
      (f) => f.path.validateVideoPath(),
      emptyError: FileFieldErrorMessages.fileRequired,
    );
    return errors.isEmpty ? null : errors.first;
  }

  String? validateAudioFiles() {
    final errors = collectValidationErrors(
      (f) => f.path.validateAudioPath(),
      emptyError: FileFieldErrorMessages.fileRequired,
    );
    return errors.isEmpty ? null : errors.first;
  }

  String? validateDocumentFiles() {
    final errors = collectValidationErrors(
      (f) => f.path.validateDocumentPath(),
      emptyError: FileFieldErrorMessages.fileRequired,
    );
    return errors.isEmpty ? null : errors.first;
  }
}

extension ListStringValidationExtension on List<String>? {
  String? validateImagePaths() {
    final errors = collectValidationErrors(
      (p) => p.validateImagePath(),
      emptyError: FileFieldErrorMessages.fileRequired,
    );
    return errors.isEmpty ? null : errors.first;
  }

  String? validateVideoPaths() {
    final errors = collectValidationErrors(
      (p) => p.validateVideoPath(),
      emptyError: FileFieldErrorMessages.fileRequired,
    );
    return errors.isEmpty ? null : errors.first;
  }

  String? validateAudioPaths() {
    final errors = collectValidationErrors(
      (p) => p.validateAudioPath(),
      emptyError: FileFieldErrorMessages.fileRequired,
    );
    return errors.isEmpty ? null : errors.first;
  }

  String? validateDocumentPaths() {
    final errors = collectValidationErrors(
      (p) => p.validateDocumentPath(),
      emptyError: FileFieldErrorMessages.fileRequired,
    );
    return errors.isEmpty ? null : errors.first;
  }
}
