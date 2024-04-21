import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xmarkets/bloc/ticker/ticker_bloc.dart';
import 'package:xmarkets/repository/repository_bundle.dart';

@immutable
class RootProvider extends StatelessWidget {
  final Widget child;
  const RootProvider({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<RepositoryBundle>(
      create: (BuildContext context) => RepositoryBundle(
        mock: true,
        baseUrl: '/',
      ),
      child: MultiBlocProvider(
        providers: _buildBlocProvider(),
        child: child,
      ),
    );
  }
}

///Builds the global [BlocProvider]s
///

List<BlocProvider<Bloc<dynamic, dynamic>>> _buildBlocProvider() => [
  BlocProvider<TickerBloc>(
    create: (BuildContext context) => TickerBloc(
        RepositoryProvider.of<RepositoryBundle>(context).ticker,
    ),
  ),
];
