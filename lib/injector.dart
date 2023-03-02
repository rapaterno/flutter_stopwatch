import 'package:flutter_stopwatch/domain/bloc/stop_watch_bloc.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<StopWatchBloc>(StopWatchBloc());
}
