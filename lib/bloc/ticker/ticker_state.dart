import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:xmarkets/model/ticker.dart';

///Describes how the process of fetching [Ticker]s is going
@immutable
abstract class TickerState extends Equatable {}

@immutable
class InitialTickerState extends TickerState {
  @override
  List<Object> get props => [toString()];

  @override
  String toString() => 'Initial';
}

@immutable
class ReceivedTickerState extends TickerState {
  final List<Ticker> tickers;

  ReceivedTickerState(this.tickers);

  @override
  List<Object> get props => [tickers];

  @override
  String toString() => 'Received/NumberOfTickeres: ${tickers.length}';
}

@immutable
class ErrorTickerState extends TickerState {
  final String errorMessage;

  ErrorTickerState(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];

  @override
  String toString() => 'Error/Message: $errorMessage';
}

@immutable
class LoadingTickerState extends TickerState {
  @override
  List<Object> get props => [toString()];

  @override
  String toString() => 'Loading';
}
