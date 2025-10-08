import 'package:dartz/dartz.dart';
import '../entities/user.dart';
import '../failures/failure.dart';
import '../repositories/user_repository.dart';

class AuthStateStream {
  final UserRepository repository;

  AuthStateStream(this.repository);

  Stream<Either<Failure, UserEntity?>> call() {
    return repository.authStateChanges();
  }
}