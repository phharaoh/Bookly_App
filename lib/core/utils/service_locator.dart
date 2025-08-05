import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:bookly_app/core/api/api_service.dart';
import 'package:bookly_app/features/home/data/repo/impl_repo.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiService>()));
}
