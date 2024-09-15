import 'package:dartz/dartz.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/utils/services/internet_info.dart';
import '../../domain/entity/user_entity.dart';
import '../../domain/repository/auth_repository.dart';
import '../sources/auth_source.dart';

class AuthRepositoryImpl implements AuthRepository {
  final InternetInfo internetInfo;
  final AuthSource authSource;

  AuthRepositoryImpl({required this.internetInfo, required this.authSource});

  @override
  Future<Either<Failure, UserEntity>> signIn(String email, String password) async {
    try {
      if (await internetInfo.hasConnexion()) {
        final user = await authSource.signIn(email, password);

        return Right(user);
      } else {
        return const Left(NotConnectedFailure());
      }
    } on ServerException {
      return const Left(ServerFailure());
    }
  }
}