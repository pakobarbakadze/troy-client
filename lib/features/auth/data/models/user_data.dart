import 'package:troy_client/features/auth/data/models/user.dart';
import 'package:troy_client/features/auth/domain/entities/user_data.dart';

class UserDataModel extends UserData {
  const UserDataModel({
    required super.user,
    required super.token,
  });

  factory UserDataModel.fromEntity(UserData userData) {
    return UserDataModel(user: userData.user, token: userData.token);
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'user': UserModel.fromEntity(user).toJson(),
      'token': token,
    };
  }

  factory UserDataModel.fromJson(Map<String, dynamic> map) {
    return UserDataModel(
      user: UserModel.fromJson(map['user'] as Map<String, dynamic>),
      token: map['token'] as String,
    );
  }
}
