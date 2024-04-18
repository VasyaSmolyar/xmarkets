import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class TickerEvent extends Equatable {
  const TickerEvent();
}

class LoadTickerEvent extends TickerEvent {
  @override
  List<Object?> get props => [];
}
