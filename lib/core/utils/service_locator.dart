import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'api_service.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  //make Singleton (the object is HomeRepoImpl) and make the object between ()
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      //get() => return the singelton that i made
      getIt.get<ApiService>(),
    ),
  );
}

class AuthRepo {
  final ApiService apiService;

  AuthRepo(this.apiService);
}
