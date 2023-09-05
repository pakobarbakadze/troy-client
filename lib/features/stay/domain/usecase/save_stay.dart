import 'package:troy_client/core/usecase/usecase.dart';
import 'package:troy_client/features/stay/domain/entities/stay.dart';
import 'package:troy_client/features/stay/domain/repository/stay_repository.dart';

class SaveStayUseCase implements UseCase<void, Stay> {
  final StayRepository _stayRepository;

  SaveStayUseCase(this._stayRepository);

  @override
  Future call({Stay? params}) {
    return _stayRepository.saveStay(params!);
  }
}
