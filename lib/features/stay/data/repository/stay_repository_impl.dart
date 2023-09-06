import 'package:troy_client/core/resources/base_api_repository.dart';
import 'package:troy_client/core/resources/data_state.dart';
import 'package:troy_client/features/stay/domain/entities/stay.dart';

import '../../domain/repository/stay_repository.dart';
import '../models/stay.dart';
import '../sources/remote/stay_api_service.dart';

class StayRepositoryImpl extends BaseApiRepository implements StayRepository {
  final StayApiService _stayApiService;
  StayRepositoryImpl(this._stayApiService);

  @override
  Future<DataState<List<StayModel>>> getStays() {
    return getStateOf(request: () => _stayApiService.getStays());
  }

  @override
  Future<DataState> saveStay(Stay stay) async {
    return getStateOf(
        request: () => _stayApiService.saveStay(StayModel.fromEntity(stay)));
  }
}
