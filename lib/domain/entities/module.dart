import 'package:equatable/equatable.dart';

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

// filepath: lib/domain/entities/lesson.dart
import 'package:equatable/equatable.dart';

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

// filepath: lib/domain/entities/quiz.dart
import 'package:equatable/equatable.dart';

class Quiz extends Equatable {
  final String id;
  final List<Question> questions;

  const Quiz({
    required this.id,
    required this.questions,
  });

  @override
  List<Object?> get props => [id, questions];
}

// filepath: lib/domain/entities/question.dart
import 'package:equatable/equatable.dart';

enum QuestionType { multipleChoice, trueFalse }

class Question extends Equatable {
  final String id;
  final String text;
  final QuestionType type;
  final List<String>? options; // for MCQ
  final dynamic answer; // String or bool

  const Question({
    required this.id,
    required this.text,
    required this.type,
    this.options,
    required this.answer,
  });

  @override
  List<Object?> get props => [id, text, type, options, answer];
}