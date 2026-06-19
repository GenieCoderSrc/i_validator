extension ValidationErrorListExtension<T> on List<T>? {
  /// Collects all validation errors for items in a list using a provided validator.
  ///
  /// [validator] is a function that returns an error string if the item is invalid.
  /// [emptyError] is the error message to return if the list is null or empty.
  List<String> collectValidationErrors(
    String? Function(T item) validator, {
    String? emptyError,
  }) {
    final items = this;

    if (items == null || items.isEmpty) {
      return emptyError == null ? const [] : [emptyError];
    }

    return items.map(validator).whereType<String>().toList();
  }
}
