import 'package:dartz/dartz.dart';
import '../repositories/code_editor_repository.dart';
import '../failures/failure.dart';
import '../entities/draft.dart';

class SaveDraft {
  final CodeEditorRepository repository;

  SaveDraft(this.repository);

  Future<Either<Failure, DraftEntity>> call({
    required String uid,
    required String exerciseId,
    required String code,
  }) {
    return repository.saveDraft(uid: uid, exerciseId: exerciseId, code: code);
  }
}