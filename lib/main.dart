import 'package:flutter/material.dart';
import 'package:xmarkets/root_provider.dart';
import 'package:xmarkets/ui/page/watchlist/watchlist_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const RootProvider(
      child: MaterialApp(
        home: WatchListPage()
      ),
    );
  }
}
