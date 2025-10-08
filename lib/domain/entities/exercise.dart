import 'package:equatable/equatable.dart';

class ExerciseEntity extends Equatable {
  final String id;
  final String title;
  final String? description;
  final String starterCode;
  final String language; // e.g., "dart", "python"
  final bool published;
  final DateTime? createdAt;

  const ExerciseEntity({
    required this.id,
    required this.title,
    this.description,
    required this.starterCode,
    required this.language,
    this.published = false,
    this.createdAt,
  });

  @override
  List<Object?> get props => [id, title, description, starterCode, language, published, createdAt];
}