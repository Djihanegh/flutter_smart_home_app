import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class ServerFailure<T> with _$ServerFailure<T> {
  const factory ServerFailure.serverError({T? msg}) = ServerError;

  const factory ServerFailure.apiFailure({T? msg}) = ApiFailure;
}
