import 'package:dartz/dartz.dart';
import 'package:ddd_cubit_v1/domain/core/failures.dart';
import 'package:ddd_cubit_v1/domain/core/value_objects.dart';
import 'package:ddd_cubit_v1/domain/core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  const EmailAddress._(this.value): super(value);

  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String? input) {
    assert(input != null);
    return EmailAddress._(validateEmailAddress(input!));
  }
}

class Password extends ValueObject<String> {
  const Password._(this.value): super(value);

  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String? input) {
    assert(input != null);
    return Password._(validateEmailAddress(input!));
  }
}