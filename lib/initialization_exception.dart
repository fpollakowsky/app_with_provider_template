class InitializationException implements Exception {
  InitializationException(this.message, this.cause);

  final String message;
  final Object cause;

  @override
  String toString() {
    return 'InitializationException{message: $message, cause: ${cause.toString()}';
  }
}
