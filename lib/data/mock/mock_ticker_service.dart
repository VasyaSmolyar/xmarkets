import 'package:flutter/material.dart';
import 'package:xmarkets/model/ticker.dart';
import 'package:xmarkets/repository/service.dart';

@immutable
class MockTickerService extends Service<String, List<Ticker>> {
  static const List<Ticker> _dummyTickers = [
    Ticker(
      name: 'AAPL', 
      fullName: 'Apple Inc', 
      image: 'assets/image/ticker/APPL.png',
      price: 122.99,
      change: 5.13, 
      graphic: 'assets/image/ticker/long.png',
    ),
    Ticker(
      name: 'AMZN', 
      fullName: 'Amazon.com, Inc.', 
      image: 'assets/image/ticker/AMZN.png',
      price: 3000.00,
      change: -20.00, 
      graphic: 'assets/image/ticker/short.png',
    ),
    Ticker(
      name: 'GOOGL', 
      fullName: 'Alphabet Inc.', 
      image: 'assets/image/ticker/GOOGL.png',
      price: 1500.00,
      change: 10.00, 
      graphic: 'assets/image/ticker/long.png',
    ),
    Ticker(
      name: 'TSLA', 
      fullName: 'Tesla, Inc.', 
      image: 'assets/image/ticker/TSLA.png',
      price: 800.00,
      change: -3.10, 
      graphic: 'assets/image/ticker/short.png',
    ),
    Ticker(
      name: 'MARA', 
      fullName: 'Marathon Digital Holdings, Inc.', 
      image: 'assets/image/ticker/MARA.png',
      price: 50.00,
      change: 0.51, 
      graphic: 'assets/image/ticker/long.png',
    ),
  ];

  @override
  Future<List<Ticker>> post(String input) async => _dummyTickers;
}
