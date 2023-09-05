import 'package:dio/dio.dart';
import 'package:troy_client/core/resources/data_state.dart';

import '../../domain/repository/stay_repository.dart';
import '../models/stay.dart';
import '../sources/remote/stay_api_service.dart';

class StayRepositoryImpl extends StayRepository {
  final StayApiService _stayApiService;
  StayRepositoryImpl(this._stayApiService);

  @override
  Future<DataState<List<StayModel>>> getStays() async {
    try {
      final httpResponse = await _stayApiService.getStays();

      return DataSuccess(httpResponse.data);
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }
}
