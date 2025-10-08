import 'package:dartz/dartz.dart';
import '../repositories/code_editor_repository.dart';
import '../failures/failure.dart';
import '../entities/draft.dart';

class GetDraft {
  final CodeEditorRepository repository;

  GetDraft(this.repository);

  Future<Either<Failure, DraftEntity?>> call({
    required String uid,
    required String exerciseId,
  }) {
    return repository.getDraft(uid: uid, exerciseId: exerciseId);
  }
}