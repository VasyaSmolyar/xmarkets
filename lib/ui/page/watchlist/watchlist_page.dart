import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xmarkets/bloc/ticker/ticker_bloc.dart';
import 'package:xmarkets/bloc/ticker/ticker_state.dart';
import 'package:xmarkets/ui/widgets/ticker/ticker_list.dart';

class WatchListPage extends StatelessWidget {
  const WatchListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Code'),
      ),
      body: BlocBuilder<TickerBloc, TickerState>(
        builder: (BuildContext context, TickerState state) { 
          if (state is LoadingTickerState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is ReceivedTickerState) {
            return SizedBox(
              child: TickerList(tickers: state.tickers),
            );
          }

          return const Text('Error');
        },
      ),
    );
  }
}
