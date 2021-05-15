import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:hydroponics_app/feature/home/home_page.dart';
import 'package:hydroponics_app/state/app_state.dart';

class HydroponicsApp extends StatelessWidget {
  const HydroponicsApp({Key key, this.store}) : super(key: key);

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
