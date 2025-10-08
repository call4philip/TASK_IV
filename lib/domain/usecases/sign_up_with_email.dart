import 'package:dartz/dartz.dart';
import '../entities/user.dart';
import '../failures/failure.dart';
import '../repositories/user_repository.dart';

class SignUpWithEmail {
  final UserRepository repository;

  SignUpWithEmail(this.repository);

  Future<Either<Failure, UserEntity>> call({
    required String email,
    required String password,
    String? name,
  }) {
    return repository.signUpWithEmail(
      email: email,
      password: password,
      name: name,
    );
  }
}