import 'package:troy_client/core/resources/data_state.dart';
import 'package:troy_client/core/usecase/usecase.dart';
import 'package:troy_client/features/auth/domain/entities/user.dart';

import '../repository/auth_repository.dart';

class RegisterUseCase implements UseCase<DataState, User> {
  final AuthRepository _authRepository;

  RegisterUseCase(this._authRepository);

  @override
  Future<DataState> call({required User params}) {
    return _authRepository.register(params);
  }
}
