import 'package:dartz/dartz.dart';

import '../entities/lesson.dart';
import '../entities/module.dart';
import '../failures/failure.dart';
import '../repositories/modulerepository.dart';

class GetModules {
  final ModuleRepository repository;

  GetModules(this.repository);

  Future<Either<Failure, List<Module>>> call() {
    return repository.getModules();
  }
}

class GetModuleById {
  final ModuleRepository repository;

  GetModuleById(this.repository);

  Future<Either<Failure, Module>> call(String moduleId) {
    return repository.getModuleById(moduleId);
  }
}

class GetLesson {
  final ModuleRepository repository;

  GetLesson(this.repository);

  Future<Either<Failure, Lesson>> call(String moduleId, String lessonId) {
    return repository.getLesson(moduleId, lessonId);
  }
}

class CreateOrUpdateModule {
  final ModuleRepository repository;

  CreateOrUpdateModule(this.repository);

  Future<Either<Failure, void>> call(Module module) {
    return repository.createOrUpdateModule(module);
  }
}

class DeleteModule {
  final ModuleRepository repository;

  DeleteModule(this.repository);

  Future<Either<Failure, void>> call(String moduleId) {
    return repository.deleteModule(moduleId);
  }
}