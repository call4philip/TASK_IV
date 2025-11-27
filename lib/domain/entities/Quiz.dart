import 'package:equatable/equatable.dart';

import 'Question_type.dart';

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
