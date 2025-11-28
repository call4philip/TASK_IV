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

