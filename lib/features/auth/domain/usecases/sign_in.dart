import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entity/user_entity.dart';
import '../repository/auth_repository.dart';

abstract class SignIn {
  Future<Either<Failure, UserEntity>> call(String email, String password);
}

class SignInImpl implements SignIn {
  final AuthRepository repository;

  SignInImpl({required this.repository});

  @override
  Future<Either<Failure, UserEntity>> call(String email, String password) {
    return repository.signIn(email, password);
  }
}