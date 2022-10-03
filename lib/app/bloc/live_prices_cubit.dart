import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'dart:core';

part 'live_prices_state.dart';

class LivePricesCubit extends Cubit<LivePricesState> {
  LivePricesCubit() : super(LivePricesInitial());
}
