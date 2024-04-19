import 'package:flutter/material.dart';
import 'package:xmarkets/ui/widgets/ticker/ticker_list.dart';

class WatchListPage extends StatelessWidget {
  const WatchListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Code'),
      ),
      body: SizedBox(
        child: TickerList(tickers: []),
      ),
    );
  }
}
