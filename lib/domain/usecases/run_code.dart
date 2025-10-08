import 'package:dartz/dartz.dart';
import '../repositories/code_editor_repository.dart';
import '../failures/failure.dart';
import '../entities/execution_result.dart';

class RunCode {
  final CodeEditorRepository repository;

  RunCode(this.repository);

  Future<Either<Failure, ExecutionResultEntity>> call({
    required String uid,
    required String exerciseId,
    required String code,
    required String language,
    Duration? timeout,
  }) {
    return repository.runCode(
      uid: uid,
      exerciseId: exerciseId,
      code: code,
      language: language,
      timeout: timeout,
    );
  }
}