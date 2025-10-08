import 'package:dartz/dartz.dart';
import '../entities/module.dart';
import '../entities/lesson.dart';
import '../entities/quiz.dart';
import '../failures/failure.dart';

abstract class ModuleRepository {
  Future<Either<Failure, List<Module>>> getModules();
  Future<Either<Failure, Module>> getModuleById(String moduleId);
  Future<Either<Failure, Lesson>> getLesson(String moduleId, String lessonId);
  Future<Either<Failure, void>> createOrUpdateModule(Module module);
  Future<Either<Failure, void>> deleteModule(String moduleId);
}