import 'package:flutter/material.dart';
import 'package:xmarkets/ui/widgets/footer/footer.dart';
import 'package:xmarkets/ui/widgets/header/header.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(),
      body: child,
      bottomNavigationBar: const Footer()
    );
  }
}