import 'dart:developer' as developer;
class Dev {
  Dev._();

  static void log(dynamic value,
      {String name = 'Covid', Object? error, StackTrace? stackTrace}) {
    developer.log(
      value.toString(),
      name: name,
      error: error,
      stackTrace: stackTrace
    );
  }
}
