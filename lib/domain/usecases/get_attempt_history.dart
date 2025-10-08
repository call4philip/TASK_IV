import 'package:dartz/dartz.dart';
import '../repositories/code_editor_repository.dart';
import '../failures/failure.dart';
import '../entities/attempt.dart';

class GetAttemptHistory {
  final CodeEditorRepository repository;

  GetAttemptHistory(this.repository);

  Future<Either<Failure, List<AttemptEntity>>> call({
    required String uid,
    required String exerciseId,
  }) {
    return repository.getAttempts(uid: uid, exerciseId: exerciseId);
  }
}