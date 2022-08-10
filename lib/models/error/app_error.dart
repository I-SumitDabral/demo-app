
class AppError {
  final AppErrorType type;

  AppError(this.type);
}

enum AppErrorType {
  empty('no data found'),
  nullFound("null found");

  final String message;
  const AppErrorType(this.message);
}
