import 'package:troy_client/core/resources/base_api_repository.dart';
import 'package:troy_client/core/resources/data_state.dart';
import 'package:troy_client/features/auth/data/models/user.dart';
import 'package:troy_client/features/auth/data/models/user_data.dart';
import 'package:troy_client/features/auth/data/sources/auth_api_service.dart';
import 'package:troy_client/features/auth/domain/entities/user.dart';

import '../../domain/repository/auth_repository.dart';

class AuthRepositoryImpl extends BaseApiRepository implements AuthRepository {
  final AuthApiService _authApiService;
  AuthRepositoryImpl(this._authApiService);

  @override
  Future<DataState<UserDataModel>> login(String email, String password) {
    return getStateOf(
      request: () =>
          _authApiService.login({'email': email, 'password': password}),
    );
  }

  @override
  Future<DataState> register(User user) {
    return getStateOf(
      request: () => _authApiService.register(UserModel.fromEntity(user)),
    );
  }
}
