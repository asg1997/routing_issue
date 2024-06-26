import 'package:fa_piano/core/utils/custom_exception.dart';

sealed class LocalDatabaseException extends CustomException {
  LocalDatabaseException({required super.stack, required super.causedError});

  factory LocalDatabaseException.create({
    required StackTrace? stack,
    required Object? causedError,
  }) =>
      UnableToCreateData(stack: stack, causedError: causedError);
  factory LocalDatabaseException.delete({
    required StackTrace? stack,
    required Object? causedError,
  }) =>
      UnableToDeleteData(stack: stack, causedError: causedError);
  factory LocalDatabaseException.get({
    required StackTrace? stack,
    required Object? causedError,
  }) =>
      UnableToGetData(stack: stack, causedError: causedError);
  factory LocalDatabaseException.update({
    required StackTrace? stack,
    required Object? causedError,
  }) =>
      UnableToUpdateData(stack: stack, causedError: causedError);
}

class UnableToCreateData extends LocalDatabaseException {
  UnableToCreateData({required super.stack, required super.causedError});
}

class UnableToDeleteData extends LocalDatabaseException {
  UnableToDeleteData({required super.stack, required super.causedError});
}

class UnableToGetData extends LocalDatabaseException {
  UnableToGetData({required super.stack, required super.causedError});
}

class UnableToUpdateData extends LocalDatabaseException {
  UnableToUpdateData({required super.stack, required super.causedError});
}
