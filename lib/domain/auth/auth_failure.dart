// Types of Failures:

// 1. User "taps out" of 3rd party sign-in flow
// 2. There is an error on the auth server
// 3. User wants to register with an email which is already used
// 4. User enters invalid password or email

import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.cancelledByUser() = CancelledByUser;
  const factory AuthFailure.serverError() = ServerError;
  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory AuthFailure.invalidEmailAndPassword() = InvalidEmailAndPassword;
}