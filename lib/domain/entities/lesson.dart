import 'package:equatable/equatable.dart';
import 'Quiz.dart';
class Lesson extends Equatable {
  final String id;
  final String title;
  final String content; // markdown/text
  final Quiz? quiz;

  const Lesson({
    required this.id,
    required this.title,
    required this.content,
    this.quiz,
  });

  @override
  List<Object?> get props => [id, title, content, quiz];
}
