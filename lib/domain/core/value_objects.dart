import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:ddd_cubit_v1/domain/core/failures.dart';


@immutable
abstract class ValueObject<T> {
  const ValueObject(this.value);
  final Either<ValueFailure<T>, T> value;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ValueObject && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}