import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_page_to_another_page_data_pass/data_pass_or_equatable.dart';
import 'package:riverpod_page_to_another_page_data_pass/go_route.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      // home: PracticeEight(),
      routerConfig: _route,
    );
  }
}

final GoRouter _route = GoRouter(routes: [
  GoRoute(path: "/", builder: (context, state) => const GoRoutePage()),
  GoRoute(
      path: "/PracticeEight",
      builder: (context, state) => const EquatableScreen()),
]);
