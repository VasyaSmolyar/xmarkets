import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:xmarkets/bloc/ticker/ticker_event.dart';
import 'package:xmarkets/bloc/ticker/ticker_state.dart';
import 'package:xmarkets/model/ticker.dart';
import 'package:xmarkets/repository/service.dart';

///Handles the fetching of [Ticker]s that match the [Search] defined
///by the [CurrentSearchBloc]
///
///When receiving a [TickerEvent.request], the [TickerBloc] uses the
///current state of the [CurrentSearchBloc] to fetch new [Ticker]s form
///it's [_tickerService]. The [TickerBloc] then emits new [TickerState] reflecting
///the result of that communication.
///
///#### Why inject the CurrentSearchBloc?
///I did this so that the UI does not need access to 2 blocs every time
///it needs to request new [Ticker]s.
class TickerBloc extends Bloc<TickerEvent, TickerState> {
  final Service<String?, List<Ticker>> _tickerService;

  ///Creates one [TickerBloc]
  ///
  ///The dependency on the the [_tickerService] are injected.

  TickerBloc(this._tickerService) : super(InitialTickerState()) {
    on<LoadTickerEvent>((event, emit) async {
      emit(LoadingTickerState());
      try {
        final state = await _loadTickeres();
        emit(state);
      } catch (e) {
        emit(ErrorTickerState(e.toString()));
      }
    });
  }

  Future<TickerState> _loadTickeres() async {
    List<Ticker> newState = await _tickerService.post(null);
    return ReceivedTickerState(newState);
  }
}
