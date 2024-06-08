import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String name;
  final String email;
  final String address;

  const User({
    required this.name,
    required this.email,
    required this.address,
  });

  @override
  List<Object?> get props => [name, email, address];
}
