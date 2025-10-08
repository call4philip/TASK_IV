import 'package:dartz/dartz.dart';
import '../entities/user.dart';
import '../failures/failure.dart';
import '../repositories/user_repository.dart';

class SignInWithGithub {
  final UserRepository repository;

  SignInWithGithub(this.repository);

  Future<Either<Failure, UserEntity>> call() {
    return repository.signInWithGithub();
  }
}