import 'package:flutter/material.dart';
import 'package:xmarkets/root_provider.dart';
import 'package:xmarkets/router/router.dart';
import 'package:xmarkets/ui/theme/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RootProvider(
      child: MaterialApp.router(
        theme: themeData,
        routerConfig: router,
      )
    );
  }
}
