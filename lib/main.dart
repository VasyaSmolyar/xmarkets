import 'package:flutter/material.dart';
import 'package:xmarkets/root_provider.dart';
import 'package:xmarkets/router/router.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RootProvider(
      child: MaterialApp.router(
        routerConfig: router,
      )
    );
  }
}
