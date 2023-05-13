class CustomError extends Error {
  final String? code;
  final bool isValid;
  final String? message;
  final dynamic data;

  CustomError({
    this.code,
    this.message,
    this.isValid = false,
    this.data,
  });

  @override
  String toString() => 'CustomError(message: $message)';

  @override
  // ignore: avoid_renaming_method_parameters
  bool operator ==(Object obj) {
    if (identical(this, obj)) return true;

    return obj is CustomError && obj.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}
