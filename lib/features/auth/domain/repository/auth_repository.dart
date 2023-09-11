import 'package:troy_client/core/resources/data_state.dart';
import 'package:troy_client/features/auth/domain/entities/user.dart';
import 'package:troy_client/features/auth/domain/entities/user_data.dart';

abstract class AuthRepository {
  Future<DataState> register(User user);

  Future<DataState<UserData>> login(String email, String password);
}
