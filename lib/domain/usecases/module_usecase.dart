import 'package:dartz/dartz.dart';
import '../entities/module.dart';
import '../failures/failure.dart';
import '../repositories/module_repository.dart';

class GetModules {
  final ModuleRepository repository;

  GetModules(this.repository);

  Future<Either<Failure, List<Module>>> call() {
    return repository.getModules();
  }
}

// filepath: lib/domain/usecases/get_module_by_id.dart
import 'package:dartz/dartz.dart';
import '../entities/module.dart';
import '../failures/failure.dart';
import '../repositories/module_repository.dart';

class GetModuleById {
  final ModuleRepository repository;

  GetModuleById(this.repository);

  Future<Either<Failure, Module>> call(String moduleId) {
    return repository.getModuleById(moduleId);
  }
}

// filepath: lib/domain/usecases/get_lesson.dart
import 'package:dartz/dartz.dart';
import '../entities/lesson.dart';
import '../failures/failure.dart';
import '../repositories/module_repository.dart';

class GetLesson {
  final ModuleRepository repository;

  GetLesson(this.repository);

  Future<Either<Failure, Lesson>> call(String moduleId, String lessonId) {
    return repository.getLesson(moduleId, lessonId);
  }
}

// filepath: lib/domain/usecases/create_or_update_module.dart
import 'package:dartz/dartz.dart';
import '../entities/module.dart';
import '../failures/failure.dart';
import '../repositories/module_repository.dart';

class CreateOrUpdateModule {
  final ModuleRepository repository;

  CreateOrUpdateModule(this.repository);

  Future<Either<Failure, void>> call(Module module) {
    return repository.createOrUpdateModule(module);
  }
}

// filepath: lib/domain/usecases/delete_module.dart
import 'package:dartz/dartz.dart';
import '../failures/failure.dart';
import '../repositories/module_repository.dart';

class DeleteModule {
  final ModuleRepository repository;

  DeleteModule(this.repository);

  Future<Either<Failure, void>> call(String moduleId) {
    return repository.deleteModule(moduleId);
  }
}