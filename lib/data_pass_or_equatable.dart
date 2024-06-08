import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'user_equatable.dart';

final nameProvider = Provider.family<String, User>((ref, user) {
  return "Name:${user.name},\nEmail: ${user.email},\nAddress:${user.address}";
});

class EquatableScreen extends ConsumerStatefulWidget {
  const EquatableScreen({super.key});

  @override
  _EquatableScreenState createState() => _EquatableScreenState();
}

class _EquatableScreenState extends ConsumerState<EquatableScreen> {
  @override
  Widget build(BuildContext context) {
    final name1 = ref.watch(nameProvider(const User(
        name: "MR Mostakim",
        email: "mostakim@gmail.com",
        address: "Dhaka Bangaldesh")));
    return Scaffold(
      body: Center(
        child: Text(name1),
      ),
    );
  }
}
