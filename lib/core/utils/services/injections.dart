import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../../../features/auth/data/repository/auth_repository_impl.dart';
import '../../../features/auth/data/sources/auth_source.dart';
import '../../../features/auth/domain/repository/auth_repository.dart';
import '../../../features/auth/domain/usecases/sign_in.dart';
import '../../../features/auth/presentation/bloc/auth_bloc.dart';
import 'internet_info.dart';

final sl = GetIt.instance;

void setup() {
  // Bloc
  sl.registerFactory(
    () => AuthBloc(signIn: sl()),
  );

  // Use cases
  sl.registerLazySingleton<SignIn>(
    () => SignInImpl(repository: sl()),
  );

  // Repositories
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      authSource: sl(),
      internetInfo: sl(),
    ),
  );

  // Data Sources
  sl.registerLazySingleton<AuthSource>(() => AuthSourceImpl());

  // Others
  sl.registerLazySingleton<InternetInfo>(() => InternetInfoImpl(checker: sl()));
  sl.registerLazySingleton(() => InternetConnectionChecker());
}
