import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:troy_client/features/stay/domain/usecase/save_stay.dart';

import 'features/stay/data/repository/stay_repository_impl.dart';
import 'features/stay/data/sources/remote/stay_api_service.dart';
import 'features/stay/domain/repository/stay_repository.dart';
import 'features/stay/domain/usecase/get_stays.dart';

final s1 = GetIt.instance;

Future<void> initializeDependencies() async {
  // Dio
  s1.registerSingleton<Dio>(Dio());

  // Dependencies
  s1.registerSingleton<StayApiService>(StayApiService(s1()));
  s1.registerSingleton<StayRepository>(StayRepositoryImpl(s1()));

  // Usecases
  s1.registerSingleton<GetStaysUseCase>(GetStaysUseCase(s1()));
  s1.registerSingleton<SaveStayUseCase>(SaveStayUseCase(s1()));
}
