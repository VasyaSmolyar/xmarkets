import 'package:flutter/material.dart';
import 'package:xmarkets/model/ticker.dart';

class TickerList extends StatelessWidget {
  const TickerList({super.key, required this.tickers});

  final List<Ticker> tickers;

  @override
  Widget build(BuildContext context) {
    return tickers.isNotEmpty
      ? ListView.builder(
          itemCount: tickers.length,
          itemBuilder: (BuildContext context, int index) {
            final ticker = tickers[index];

            return ListTile(
              leading: CircleAvatar(child: Image.asset(ticker.image)),
              title: Text(ticker.name),
              subtitle: Text(ticker.fullName),
              trailing: Row(children: [
                Image.asset(ticker.image),
                Column(
                  children: [
                    Text('${ticker.price}\$'),
                    Text('${ticker.change}%'),
                  ],
                )
              ],),
            );
          },
        )
      : const Center(child: Text('No items'));
  }
}
