import 'package:troy_client/core/resources/data_state.dart';
import 'package:troy_client/core/usecase/usecase.dart';
import 'package:troy_client/features/auth/domain/entities/credentials.dart';
import 'package:troy_client/features/auth/domain/repository/auth_repository.dart';

import '../entities/user_data.dart';

class LoginUseCase implements UseCase<DataState<UserData>, Credentials> {
  final AuthRepository _authRepository;

  LoginUseCase(this._authRepository);

  @override
  Future<DataState<UserData>> call({required params}) {
    return _authRepository.login(params.email, params.password);
  }
}
