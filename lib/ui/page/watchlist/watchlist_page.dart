import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xmarkets/bloc/ticker/ticker_bloc.dart';
import 'package:xmarkets/bloc/ticker/ticker_event.dart';
import 'package:xmarkets/bloc/ticker/ticker_state.dart';
import 'package:xmarkets/ui/widgets/ticker/ticker_list.dart';

class WatchListPage extends StatefulWidget {
  const WatchListPage({super.key});

  @override
  State<WatchListPage> createState() => _WatchListPageState();
}

class _WatchListPageState extends State<WatchListPage> {
  @override
  void initState() {
    context.read<TickerBloc>().add(LoadTickerEvent());

    super.initState();
  }

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
              height: 800,
              width: MediaQuery.of(context).size.width,
              child: TickerList(tickers: state.tickers),
            );
          }
          if (state is ErrorTickerState) {
            return Text('Error: ${state.errorMessage}');
          }

          return const Text('Initial');
        },
      ),
    );
  }
}
