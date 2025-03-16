import 'package:dio/dio.dart';
import 'package:flutter_advanced_course/core/networking/api_service.dart';
import 'package:flutter_advanced_course/core/networking/dio_factory.dart';
import 'package:flutter_advanced_course/features/home/data/apis/home_api_services.dart';
import 'package:flutter_advanced_course/features/home/data/repos/home_repo.dart';
import 'package:flutter_advanced_course/features/login/data/repos/login_repo.dart';
import 'package:flutter_advanced_course/features/login/logic/login_cubit.dart';
import 'package:flutter_advanced_course/features/sign_up/data/repos/sign_up_repo.dart';
import 'package:flutter_advanced_course/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiServices
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // Login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  //Sign Up
  getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt()));
  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt()));

  // Home
  getIt.registerLazySingleton<HomeApiServices>(() => HomeApiServices(dio));
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
  
  // changed the logic so I create instance when the page build in the AppRouter class
  // getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt()));


}
