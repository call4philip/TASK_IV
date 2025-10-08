import 'package:equatable/equatable.dart';

class DraftEntity extends Equatable {
  final String uid;
  final String exerciseId;
  final String code;
  final DateTime updatedAt;

  const DraftEntity({
    required this.uid,
    required this.exerciseId,
    required this.code,
    required this.updatedAt,
  });

  @override
  List<Object?> get props => [uid, exerciseId, code, updatedAt];
}