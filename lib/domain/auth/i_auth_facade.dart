import 'package:dartz/dartz.dart';
import 'package:ddd_cubit_v1/domain/auth/auth_failure.dart';

import 'value_objects.dart';

// FirebaseAuth, GoogleSignIn

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
}
