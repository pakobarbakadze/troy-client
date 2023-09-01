import 'package:troy_client/core/resources/data_state.dart';
import 'package:troy_client/core/usecase/usecase.dart';
import 'package:troy_client/features/home/domain/entities/stay.dart';
import 'package:troy_client/features/home/domain/repository/stay_repository.dart';

class GetStaysUseCase implements UseCase<DataState<List<Stay>>, void> {
  final StayRepository _stayRepository;

  GetStaysUseCase(this._stayRepository);

  @override
  Future<DataState<List<Stay>>> call({void params}) {
    return _stayRepository.getStays();
  }
}
