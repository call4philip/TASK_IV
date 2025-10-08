import 'package:dartz/dartz.dart';
import '../repositories/code_editor_repository.dart';
import '../failures/failure.dart';
import '../entities/attempt.dart';

class SubmitAttempt {
  final CodeEditorRepository repository;

  SubmitAttempt(this.repository);

  Future<Either<Failure, AttemptEntity>> call({
    required String uid,
    required String exerciseId,
    required String code,
  }) {
    return repository.submitAttempt(uid: uid, exerciseId: exerciseId, code: code);
  }
}