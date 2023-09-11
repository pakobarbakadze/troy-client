import 'package:equatable/equatable.dart';

class User extends Equatable {
  const User({
    required this.firstName,
    required this.lastName,
    required this.email,
  });

  final String firstName;
  final String lastName;
  final String email;

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [firstName, lastName, email];
}
