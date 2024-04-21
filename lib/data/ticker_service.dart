import 'package:flutter/material.dart';
import 'package:xmarkets/model/ticker.dart';
import 'package:xmarkets/repository/service.dart';

@immutable
class TickerService extends Service<String?, List<Ticker>> {
  final String baseUrl;

  TickerService({required this.baseUrl});

  @override
  Future<List<Ticker>> post(String? input) {
    throw UnimplementedError();
  }
}
