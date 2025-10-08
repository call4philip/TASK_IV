import 'package:dartz/dartz.dart';
import '../entities/user.dart';
import '../failures/failure.dart';

abstract class UserRepository {
  // Email/password sign up -> returns created user
  Future<Either<Failure, UserEntity>> signUpWithEmail({
    required String email,
    required String password,
    String? name,
  });

  // Email/password sign in -> returns user
  Future<Either<Failure, UserEntity>> signInWithEmail({
    required String email,
    required String password,
  });

  // OAuth sign ins
  Future<Either<Failure, UserEntity>> signInWithGoogle();
  Future<Either<Failure, UserEntity>> signInWithGithub();

  // Sign out
  Future<Either<Failure, Unit>> signOut();

  // Get currently signed in user (if any)
  Future<Either<Failure, UserEntity>> getCurrentUser();

  // Update profile fields
  Future<Either<Failure, UserEntity>> updateProfile(UserEntity user);

  // Stream of auth state changes (nullable UserEntity when signed out)
  Stream<Either<Failure, UserEntity?>> authStateChanges();
}