import 'package:troy_client/features/auth/domain/entities/user.dart';

class UserModel extends User {
  const UserModel({
    required super.firstName,
    required super.lastName,
    required super.email,
  });

  factory UserModel.fromEntity(User user) {
    return UserModel(
      firstName: user.firstName,
      lastName: user.lastName,
      email: user.email,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
    };
  }

  factory UserModel.fromJson(Map<String, dynamic> map) {
    return UserModel(
      firstName: map['firstName'] as String,
      lastName: map['lastName'] as String,
      email: map['email'] as String,
    );
  }
}
