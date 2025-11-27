import 'package:equatable/equatable.dart';
import 'lesson.dart';

class Module extends Equatable {
  final String id;
  final String title;
  final String description;
  final List<Lesson> lessons;
  final bool published;

  const Module({
    required this.id,
    required this.title,
    required this.description,
    required this.lessons,
    required this.published,
  });

  @override
  List<Object?> get props => [id, title, description, lessons, published];
}




