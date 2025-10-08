import 'package:equatable/equatable.dart';

class ExecutionResultEntity extends Equatable {
  final String stdout;
  final String stderr;
  final int exitCode;
  final Duration runtime;
  final bool timedOut;
  final Map<String, dynamic>? meta;

  const ExecutionResultEntity({
    required this.stdout,
    required this.stderr,
    required this.exitCode,
    required this.runtime,
    this.timedOut = false,
    this.meta,
  });

  @override
  List<Object?> get props => [stdout, stderr, exitCode, runtime, timedOut, meta];
}