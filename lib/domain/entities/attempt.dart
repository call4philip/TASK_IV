import 'package:equatable/equatable.dart';
import 'execution_result.dart';

class AttemptEntity extends Equatable {
  final String id;
  final String uid;
  final String exerciseId;
  final String code;
  final bool passed;
  final double score; // normalized 0.0 - 1.0 or percent as 0..100 per convention
  final ExecutionResultEntity result;
  final DateTime createdAt;

  const AttemptEntity({
    required this.id,
    required this.uid,
    required this.exerciseId,
    required this.code,
    required this.passed,
    required this.score,
    required this.result,
    required this.createdAt,
  });

  @override
  List<Object?> get props => [id, uid, exerciseId, code, passed, score, result, createdAt];
}