import 'package:get_it/get_it.dart';
import 'package:staff_information/features/login/data/datasources/login_remote_data_source.dart';
import 'package:staff_information/features/login/data/repository/login_repository_impl.dart';
import 'package:staff_information/features/login/domain/repository/login_repository.dart';
import 'package:staff_information/features/login/domain/usecases/press_login.dart';
import 'package:staff_information/features/login/presentation/blocs/login_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Bloc
  sl.registerFactory(
    () => LoginBloc(pressLogin: sl()),
  );

  // Use cases
  sl.registerLazySingleton(() => PressLogin(sl()));

  // Repository
  sl.registerLazySingleton<LoginRepository>(
    () => LoginRepositoryImpl(loginRemoteDataSource: sl()),
  );

  // Data sources
  sl.registerLazySingleton<LoginRemoteDataSource>(
    () => LoginRemoteDataSourceImpl(),
  );
  //
  // sl.registerLazySingleton<NumberTriviaLocalDataSource>(
  //   () => NumberTriviaLocalDataSourceImpl(sharedPreferences: sl()),
  // );
  //
  // //! Core
  // sl.registerLazySingleton(() => InputConverter());
  // sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));
  //
  // //! External
  // final sharedPreferences = await SharedPreferences.getInstance();
  // sl.registerLazySingleton(() => sharedPreferences);
  // sl.registerLazySingleton(() => http.Client());
  // sl.registerLazySingleton(() => DataConnectionChecker());
}
