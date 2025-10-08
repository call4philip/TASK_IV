import 'package:dartz/dartz.dart';
import '../failures/failure.dart';
import '../entities/execution_result.dart';
import '../entities/attempt.dart';
import '../entities/draft.dart';

abstract class CodeEditorRepository {
  /// Execute code in a secure sandbox and return execution result.
  Future<Either<Failure, ExecutionResultEntity>> runCode({
    required String uid,
    required String exerciseId,
    required String code,
    required String language,
    Duration? timeout,
  });

  /// Submit a final attempt; runs tests server-side and records attempt metadata.
  Future<Either<Failure, AttemptEntity>> submitAttempt({
    required String uid,
    required String exerciseId,
    required String code,
  });

  /// Retrieve attempt history for a user/exercise.
  Future<Either<Failure, List<AttemptEntity>>> getAttempts({
    required String uid,
    required String exerciseId,
  });

  /// Save a draft of the editor content (local/server).
  Future<Either<Failure, DraftEntity>> saveDraft({
    required String uid,
    required String exerciseId,
    required String code,
  });

  /// Get existing draft if any.
  Future<Either<Failure, DraftEntity?>> getDraft({
    required String uid,
    required String exerciseId,
  });
}