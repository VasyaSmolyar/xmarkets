import 'package:flutter/material.dart';
import 'package:xmarkets/data/mock/mock_ticker_service.dart';
import 'package:xmarkets/data/ticker_service.dart';
import 'package:xmarkets/repository/service.dart';

///Generates and hold all repositories of the Application
///
///The [RepositoryBundle] will generate all relevant repositories once on
///creation and then hold them in it's member variables. 
///
///The [RepositoryBundle] exists to have all repository generation in once central location.
///It will be provided globally using a [RepositoryProvider] so it can easily be used
///to inject dependencies into th [Bloc]s of the application.
@immutable
class RepositoryBundle {
  final Service ticker;

  RepositoryBundle({required bool mock, required String baseUrl})
      : ticker = _buildTickerRepository(mock, baseUrl);

  static Service _buildTickerRepository(bool mock, String baseUrl) {
    if (mock) {
      return MockTickerService();
    } else {
      return TickerService(baseUrl: baseUrl);
    }
  }
}
