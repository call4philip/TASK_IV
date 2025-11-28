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
