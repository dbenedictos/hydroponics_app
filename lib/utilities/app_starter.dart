import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:hydroponics_app/api/api_service.dart';
import 'package:hydroponics_app/hydroponics_app.dart';
import 'package:async_redux/async_redux.dart';

import 'package:hydroponics_app/state/app_state.dart';

final getIt = GetIt.instance;

void startApp() {
  final state = AppState.init();

  var store = Store<AppState>(initialState: state);

  getIt.registerLazySingleton<ApiService>(() => ApiService());

  runApp(HydroponicsApp(store: store));
}
