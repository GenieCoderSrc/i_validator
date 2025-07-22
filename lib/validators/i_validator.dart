abstract class IValidator<T> {
  String? validate(T? input);

  String? call(T? input) => validate(input); // Default implementation
}
