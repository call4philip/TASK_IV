import 'package:dartz/dartz.dart';
import '../failures/failure.dart';
import '../repositories/user_repository.dart';

class SignOut {
  final UserRepository repository;

  SignOut(this.repository);

  Future<Either<Failure, Unit>> call() {
    return repository.signOut();
  }
}