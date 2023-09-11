import 'package:equatable/equatable.dart';

import 'package:troy_client/features/auth/domain/entities/user.dart';

class UserData extends Equatable {
  const UserData({
    required this.user,
    required this.token,
  });

  final User user;
  final String token;

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [user, token];
}
